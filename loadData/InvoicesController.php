<?php

namespace App\Http\Controllers;

use App\Models\invoices;
use App\Models\missionType;
use App\Models\societe;
use Carbon\Carbon;
use Carbon\Exceptions\InvalidFormatException;
use Illuminate\Http\Request;
use App\Models\prestation;
use App\Models\fees;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Validator;
use Barryvdh\DomPDF\Facade\Pdf;
class InvoicesController extends Controller
{


    /**

     * Display a listing of the resource.

     *
     */
    public function __construct()
    {

        $this->middleware('auth');
        $this->middleware(['role_or_permission:admin|DIRECTION']);
        // $this->middleware('permission:invoices-list|product-create|product-edit|product-delete', ['only' => ['index','show']]);
        // $this->middleware('permission:invoices-create', ['only' => ['create','store']]);
        // $this->middleware('permission:invoices-edit', ['only' => ['edit','update']]);
        //  $this->middleware('permission:invoices-delete', ['only' => ['destroy']]);
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
       // $invoices = invoices::all()->load('societes', mission_type);
        $invoices =  invoices::orderBy('invoice_date', 'DESC')->orderBy('invoice_number', 'DESC')->get(); //invoices::all();
        $societes = societe::all();
        return view('invoices.invoices', compact('invoices', 'societes'));
    }
    /**
     * Display a listing of the resource.
     */
    public function getInvoicesBySociete($id)
    {

        //; invoices::orderBy('invoice_number', 'DESC')->get() ::all()->load('societe', 'missionType')
       if (isset($id) && !empty($id))
            $invoices =  invoices::with('societe', 'missionType')->where('societe_id', $id)->orderBy('invoice_number', 'DESC')->get();
        else
            $invoices = invoices::with('societe', 'missionType')->orderBy('invoice_number', 'DESC')->get();
        return json_encode($invoices);
       // $societes = societe::all();
       // return view('invoices.invoices', compact('invoices', 'societes'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {

        // return view('invoices.add_invoice', compact('sections'));
        $societes = societe::all();
        $missionTypes = missionType::all();
        return view('invoices.add_invoice', compact('societes', 'missionTypes'));
      //  return view('invoices.add_invoice');
    }


    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {

         $validated = Validator::make($request->all(),[
            'invoice_Date' => 'bail|required|date|',
          //  'date_pay'=> 'bail|nullable|date|after_or_equal:invoice_Date| ',
        //    'Due_date' => 'bail|required|date|before_or_equal:invoice_Date| ',
            'detail' => 'bail|required|',
             'societe' => 'bail|required|',
             'missionType' => 'bail|required|',
        ]);

        $validated->after(function($validated) use ($request){
                $avc = $request->avance;
                if ($avc >0){
                    try {
                        Carbon::createFromFormat('d-m-Y', $request->date_pay);
                    } catch (InvalidFormatException) {
                        $validated->errors()->add(
                            'date_pay',
                            'Cas avance supérieur à 0 , veuillez saisir une date de paiement valide',
                        );
                    }
                }
                $pres = json_decode($request->arrayPrestation);
                if (isset($pres) && count($pres)<= 0) {
                    $validated->errors()->add(
                        'arrayPrestation',
                        'Veuillez saisir aux moins une préstation',
                    );
                }
        });
        if ($validated->fails())
        {
           /* return redirect('create_invoice')
                -> withErrors($validated)
                -> withInput();*/
            return redirect()->back()
                -> withErrors($validated)
                -> withInput();
        }

        $stt ='Non payée';
        $valstat = 1;
        $dtp = null;
        if ($request->avance > 0 && $request->TotalTTC2 > $request->avance ){
                $stt = 'Partiellement payée';
                $valstat = 2;
                $dtp = $request->date_pay;
        } elseif  ($request->avance > 0 && $request->TotalTTC2 <= $request->avance) {
                 $stt = 'Payée';
                 $valstat = 3;
                 $dtp = $request->date_pay;
        }

        DB::beginTransaction();
        try {
            $currentYear =  date('Y', strtotime($request->invoice_Date)); // date('Y');
            $currentSociete = $request->societe;
            $lastInvoice =  DB::table('invoices')
                //invoices::query()
                    ->where('societe_id', $currentSociete)
                //  ->whereYear('created_at', $currentYear)
                    ->whereYear('invoice_date', $currentYear)
                    ->orderBy('invoice_number', 'DESC')
                    ->lockForUpdate()
                    ->first();

            $invoice = invoices::create([
           // $invoice =  DB::table('invoices')->insert([
                 (isset($lastInvoice) ?  $idInvNum= intval(substr($lastInvoice->invoice_number, 4, 4)) : $idInvNum=0),
                 $idInvNum = $idInvNum + 1,
                (($idInvNum < 1000) ? $formatedInvNumb = str_pad($idInvNum,4, "0", STR_PAD_LEFT) : $formatedInvNumb = $idInvNum),
                $formatedInvNumb = "FA-" . $formatedInvNumb ."-". $currentYear,
                'invoice_number' => $formatedInvNumb,
                $dt= date('Y-m-d H:i:s', strtotime($request->invoice_Date)),
                'invoice_date' => $dt, // $request->invoice_Date,
               // $dt= date('Y-m-d H:i:s', strtotime($request->Due_date)),
              //  'prestation_date' => $dt,
                'object' => $request->objet,
                'ice' => $request->ICE,
                'ref_bc'  => $request->REF_BC,
                'client_name' => $request->ClientName,
                'client_adress' => $request->ClientAdress,
                 'detail' => $request->detail,
                'societe_id'  => $request->societe,
                'mission_type_id' => $request->missionType,
                'discount' => $request->remise,
                'commission' => $request->commission,
                'advance' => $request->avance,
                'payment_mode'  => $request->Mode_Pay,
                'remainder' => $request->Reliquat,
                'totalHT' => $request->montantHT,
                'totalHTRem' => $request->montantHTRem,
                'montantTVA' => $request->montantTVA,
                'totalTTC' => $request->TotalTTC,
                'totalTTC2' => $request->TotalTTC2,
                'status' => $stt,
                'value_status' => $valstat,
                $dtp = (isset($dtp) ? date('Y-m-d H:i:s', strtotime($dtp)) : null),
                'payment_date' => $dtp,
            ]);
            DB::commit();
        } catch (Exception $e) {
            // If something went wrong, rollback the transaction
            DB::rollback();
            // Log the error message
            Log::error($e->getMessage());
            // Return an error response to the user
            return response()->json([
                "error" => "Failed to process transaction."
            ], 500);
        }

        // $invoice = invoices::latest()->first();
        $invoice_id = $invoice->id;

        /*
        $invoice->update([
            'invoice_number' => $formatedInvNumb,
        ]);*/

        $tableDataPres =  json_decode($request->arrayPrestation);
        if (isset($tableDataPres) && count($tableDataPres)> 0) {
                    foreach ($tableDataPres as $key => $value){
                                $tva = (float) substr($tableDataPres[$key]->TVA, 0, 2);
                              //  $tva =  1 + ($tva/100);
                                $tva =  ($tva/100);
                                prestation::create([
                                    'invoice_id' => $invoice_id,
                                    'description' => trim($tableDataPres[$key]->Description),
                                    'quantity' =>  $tableDataPres[$key]->Quantite,
                                    'amount'  => $tableDataPres[$key]->Montant,
                                    'VAT'  => $tva,
                                    'user' => (Auth::user()->username),
                                 ]);
                    }
        }

        $tableFees =  json_decode($request->arrayFees);
        if (isset($tableFees) && count($tableFees)> 0) {
            foreach ($tableFees as $key => $value){
                fees::create([
                    'invoice_id' => $invoice_id,
                    'description' => trim($tableFees[$key]->Description),
                    'amount' =>  $tableFees[$key]->Montant,
                    'user' => (Auth::user()->username),
                ]);
            }
        }
        session()->flash('Add', 'Facture enregistrée avec succés.');
        return redirect("invoices_details/".$invoice_id);
       // return view('invoices.add_invoice', compact('societes', 'missionTypes'));
    }

    /**
     * Edit the specified resource.
     */
    public function edit(invoices $invoice)
    {
        //$invoice = invoices::where('id', $id)->first();
       // $sections = sections::all();
        $societes = societe::all();
        $missionTypes = missionType::all();
        $tableDataPres  = prestation::where('invoice_id',$invoice->id)->get();
        $tableFees  = fees::where('invoice_id',$invoice->id)->get();

        return view ('invoices.edit_invoice', compact('invoice','tableDataPres', 'tableFees', 'societes', 'missionTypes'));
    }



    /**
     * Update the specified resource in storage.
     *
     */
    public function update(Request $request,  invoices $invoice)
    {
        $validated = Validator::make($request->all(),[
            'invoice_Date' => 'bail|required|date|',
            //'Due_date' => 'bail|required|date|before_or_equal:invoice_Date| ',
         //   'date_pay'=> 'bail|nullable|date|after_or_equal:invoice_Date| ',
            'detail' => 'bail|required|',
            'societe' => 'bail|required|',
            'missionType' => 'bail|required|',
        ]);
        $validated->after(function($validated) use ($request){

            $yearInvD = Carbon::createFromFormat('d-m-Y', $request->invoice_Date)->format('Y');
            $currentInvNumYear =  substr($request->numFact, 8, 4);
            if ($yearInvD != $currentInvNumYear){
                $validated->errors()->add(
                    'invoice_Date',
                    'Date facture ne peut être différent de l\'année  : ' . $currentInvNumYear
                );
            }

            $avc = $request->avance;
            if ($avc >0){
                try {
                    Carbon::createFromFormat('d-m-Y', $request->date_pay);
                } catch (InvalidFormatException) {
                    $validated->errors()->add(
                        'date_pay',
                        'Cas avance supérieur à 0 , veuillez saisir une date de paiement valide',
                    );
                }
            }

            $pres = json_decode($request->arrayPrestation);
            if (isset($pres) && count($pres)<= 0) {
                $validated->errors()->add(
                    'arrayPrestation',
                    'Veuillez saisir aux moins une préstation',
                );
            }
        });
        if ($validated->fails())
        {
            return redirect()->back()
                -> withErrors($validated)
                -> withInput();
        }
        $stt ='Non payée';
        $valstat = 1;
        $dtp = null;
        if ($request->avance > 0 && $request->TotalTTC2 > $request->avance ){
            $stt = 'Partiellement payée';
            $valstat = 2;
            $dtp = $request->date_pay;
        } elseif  ($request->avance > 0 && $request->TotalTTC2 <= $request->avance) {
            $stt = 'Payée';
            $valstat = 3;
            $dtp = $request->date_pay;
           // $dtp= date('Y-m-d H:i:s', strtotime(now()));
        }

        $invoices = invoices::findOrFail($invoice->id);

        $invoices->update([
            $dt= date('Y-m-d H:i:s', strtotime($request->invoice_Date)),
            'invoice_date' => $dt, // $request->invoice_Date,
           // $dt= date('Y-m-d H:i:s', strtotime($request->Due_date)),
           // 'prestation_date' => $dt,
            'object' => $request->objet,
            'ice' => $request->ICE,
            'ref_bc'  => $request->REF_BC,
            'client_name' => $request->ClientName,
            'client_adress' => $request->ClientAdress,
            'detail' => $request->detail,
            'societe_id'  => $request->societe,
            'mission_type_id' => $request->missionType,
            'discount' => $request->remise,
            'commission' => $request->commission,
            'advance' => $request->avance,
            'payment_mode'  => $request->Mode_Pay,
            'remainder' => $request->Reliquat,
            'totalHT' => $request->montantHT,
            'totalHTRem' => $request->montantHTRem,
            'montantTVA' => $request->montantTVA,
            'totalTTC' => $request->TotalTTC,
            'totalTTC2' => $request->TotalTTC2,
            'status' => $stt,
            'value_status' => $valstat,
             $dtp = (isset($dtp) ? date('Y-m-d H:i:s', strtotime($dtp)) : null),
            'payment_date' => $dtp,
        ]);

        $invoice_id = $invoice->id;
        prestation::where('invoice_id',$invoice_id)->forceDelete();
        $tableDataPres =  json_decode($request->arrayPrestation);
        if (isset($tableDataPres) && count($tableDataPres)> 0) {
            foreach ($tableDataPres as $key => $value){
                $tva = (float) substr($tableDataPres[$key]->TVA, 0, 2);
                //  $tva =  1 + ($tva/100);
                $tva =  ($tva/100);
                prestation::create([
                    'invoice_id' => $invoice_id,
                    'description' => trim($tableDataPres[$key]->Description),
                    'quantity' =>  $tableDataPres[$key]->Quantite,
                    'amount'  => $tableDataPres[$key]->Montant,
                    'VAT'  => $tva,
                    'user' => (Auth::user()->username),
                ]);
            }
        }
        fees::where('invoice_id',$invoice_id)->forceDelete();
        $tableFees =  json_decode($request->arrayFees);
        if (isset($tableFees) && count($tableFees)> 0) {
            foreach ($tableFees as $key => $value){
                fees::create([
                    'invoice_id' => $invoice_id,
                    'description' => trim($tableFees[$key]->Description),
                    'amount' =>  $tableFees[$key]->Montant,
                    'user' => (Auth::user()->username),
                ]);
            }
        }

        session()->flash('Status_Update');
        return redirect('/invoices');
    }
    /**
     * Print the specified resource in storage.
     */
    public function print_invoice(Request $request, $id)
    {
        $invoice = invoices::where('id', $id)->first();
       // return view('invoices.Print_invoice',compact('invoices'));
        $tableDataPres  = prestation::where('invoice_id',$id)->get();
        $tableFees  = fees::where('invoice_id',$id)->get();

        $pdf = Pdf::loadView('invoices.print_invoice', ['invoice' => $invoice, 'tableDataPres' => $tableDataPres,
            'tableFees' => $tableFees]); // , 'data' =>$data]);

        $pdf->output();
        $domPdf = $pdf->getDomPDF();
        $canvas = $domPdf->getCanvas();
       // $canvas->page_text(10, 10, "Page {PAGE_NUM} / {PAGE_COUNT}", null, 10, [0, 0, 0]);
        /* Set Page Number to Footer */
        $canvas->page_text(272, $canvas->get_height() - 15, "Page {PAGE_NUM} / {PAGE_COUNT}", null, 8, [0, 0, 0]);

        return $pdf->download();
    }



    /**
     * Print the specified resource.
     */
    public function print_invoice_no_logo($id)
    {
        $invoice = invoices::where('id', $id)->first();
        // return view('invoices.Print_invoice',compact('invoices'));
        $tableDataPres  = prestation::where('invoice_id',$id)->get();
        $tableFees  = fees::where('invoice_id',$id)->get();

        $pdf = Pdf::loadView('invoices.print_invoice_nlogo', ['invoice' => $invoice, 'tableDataPres' => $tableDataPres, 'tableFees' => $tableFees]);

        $pdf->output();
        $domPdf = $pdf->getDomPDF();
        $canvas = $domPdf->getCanvas();
        // $canvas->page_text(10, 10, "Page {PAGE_NUM} / {PAGE_COUNT}", null, 10, [0, 0, 0]);
        /* Set Page Number to Footer */
        $canvas->page_text(272, $canvas->get_height() - 15, "Page {PAGE_NUM} / {PAGE_COUNT}", null, 8, [0, 0, 0]);
        return $pdf->download();

    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        //
        $invoice =  invoices::where('id',$id)->first();

        $tableDataPres  = prestation::where('invoice_id',$id)->get();
        $tableFees  = fees::where('invoice_id',$id)->get();

        return view('invoices.recap_invoice', compact('invoice','tableDataPres', 'tableFees'));

    }

    /**
     * Show the specified resource in storage.
     */
    public function showStatus($id)
    {
        $invoices = invoices::where('id', $id)->first();
        return view('invoices.status_update', compact('invoices'));

    }
    /**
     * Update paid status for the specified resource in storage.
     */
    public function statusUpdate(Request $request, $id)
    {
        $validated = Validator::make($request->all(),[
           // 'advance' => 'bail|required|',
            //'date_fact'=> 'bail|nullable|date|after_or_equal:invoice_Date| ',
        ]);
        $validated->after(function($validated) use ($request){

            if ($request->status == 2 || $request->status == 3){
                $ttcAmount = $request->MontantTTC;
                $avc = $request->advance;
                if ($request->status == 2){
                    if ($avc == 0 || $avc >= $ttcAmount){
                        $validated->errors()->add(
                            'Error',
                            'Montant avance erronée',
                        );
                    }
                }
                //$pattern = '/^\d{2}-\d{2}-\d{4}$/'; //'/\d{2}$-\d{2}-^\d{4}/';
               // $dtPay =  $request->date_pay;
                try {
                    //$dtPay =
                        Carbon::createFromFormat('d-m-Y', $request->date_pay);
                    //$dateFact =
                        Carbon::createFromFormat('d-m-Y',  $request->invoice_Date);

                    /*  if ($dateFact->gt($dtPay))
                          $validated->errors()->add(
                              'Error',
                              'Date de paiement doit être superieur où égal à la date facture',
                          );*/
                } catch (InvalidFormatException) {
                    $validated->errors()->add(
                        'Error',
                        'Veuillez saisir une date de paiement valide : format DD-MM-YYYY',
                    );
                }

            }

        });

        if ($validated->fails())
        {
            return redirect()->back()->withErrors($validated);
        }
        $invoices = invoices::findOrFail($id);

        $status =  'Non payée';
        $dtp = null;
        if ($request->status == 2){
            $status =  'Partiellement payée';
            $dtp = $request->date_pay;
        }

        else if ($request->status == 3){
            $status =  'Payée';
            $dtp = $request->date_pay;
        }



        $invoices->update([
              'remainder' => $request->restPay,
              'advance' => $request->advance,
              'status' => $status,
              'value_status' => $request->status,
               $dtp = (isset($dtp) ? date('Y-m-d H:i:s', strtotime($dtp)) : null),
              'payment_date' => $dtp,
        ]);

            session()->flash('Status_Update');
            return redirect('/invoices');

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Request $request, invoices $invoices)
    {

        $id_page =$request->id_page;
        // invoices::find($request->invoice_id)->forceDelete();
        $invoices = invoices::findOrFail($request->invoice_id);
      //  $user = User::firstOrFail($id);
        if (!$id_page==2) {
            if (auth()->user()->hasRole('admin')) {
                $invoices->forceDelete();
                session()->flash('delete_invoice');
            }else{
                // Return an error response to the user
                return response()->json([
                    "error" => "Failed to process transaction. Unauthorized user"
                ], 303);
            }
        }
        else {
            $invoices->delete();
            $pres = prestation::where('invoice_id',$request->invoice_id)->get();
            $pres->each->delete();
            $fees = fees::where('invoice_id',$request->invoice_id)->get();
            $fees->each->delete();
            session()->flash('archive_invoice');
        }
       return redirect('/invoices');
    }

    public function invoicePaid()
    {
        $invoices = Invoices::where('value_status', 3)
                    ->orderBy('invoice_date', 'DESC')
                    ->orderBy('invoice_number', 'DESC')
                    ->get();
        return view('invoices.invoices_paid',compact('invoices'));
    }

    public function invoiceUnPaid()
    {
        $invoices = Invoices::where('value_status',1)
                    ->orderBy('invoice_date', 'DESC')
                    ->orderBy('invoice_number', 'DESC')
                    ->get();
        return view('invoices.invoices_unpaid',compact('invoices'));
    }

    public function invoicePartial()
    {
        $invoices = Invoices::where('value_status',2)
            ->orderBy('invoice_date', 'DESC')
            ->orderBy('invoice_number', 'DESC')
            ->get();
        return view('invoices.invoices_partial',compact('invoices'));
    }

}
