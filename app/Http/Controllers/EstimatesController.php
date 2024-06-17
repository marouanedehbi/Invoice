<?php

namespace App\Http\Controllers;

use App\Models\estimates;
use App\Models\estimatesFees;
use App\Models\estimatesPrestation;
use App\Models\missionType;
use App\Models\societe;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Validator;
use Barryvdh\DomPDF\Facade\Pdf;

class EstimatesController extends Controller
{
    public function __construct()
    {

        $this->middleware('auth');
        $this->middleware(['role_or_permission:admin|DIRECTION|BO']);
    }
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $estimates = estimates::orderBy('estimate_date', 'DESC')->orderBy('estimate_number','desc')->get();// estimates::all();
        $societes = societe::all();
        return view('estimates.estimates', compact('estimates', 'societes'));
    }

    /**
     * Add the form for creating a new resource.
     */
    public function create()
    {
        //
        $societes = societe::all();
        $missionTypes = missionType::all();
        return view('estimates.add_estimate', compact('societes', 'missionTypes'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {

        $validated = Validator::make($request->all(),[
            'estimate_Date' => 'bail|required|date|',
            'Due_date' => 'bail|nullable|date|after_or_equal:estimate_Date|',
            'detail' => 'bail|required|',
            'societe' => 'bail|required|',
            'missionType' => 'bail|required|',
        ]);
        $validated->after(function($validated) use ($request){
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
        // Reliquat
        if ($request->avance > 0 && $request->TotalTTC2 > $request->avance ){
            $stt = 'Partiellement payée';
            $valstat = 2;
        } elseif  ($request->avance > 0 && $request->TotalTTC2 <= $request->avance) {
            $stt = 'Payée';
            $valstat = 3;
        }
        DB::beginTransaction();
        try {
          //  $dt= date ("Y-m-d H:i:s");
            $currentYear = date('Y', strtotime($request->estimate_Date)); // date('Y');
            $currentSociete = $request->societe;
            $lastEstimate = DB::table('estimates')
                 //estimates::query()
                 ->where('societe_id', $currentSociete)
               // ->whereYear('created_at', $currentYear)
                 ->whereYear('estimate_date', $currentYear)
                ->orderBy('estimate_number', 'DESC')
                ->lockForUpdate()
                ->first();

            $estimate = estimates::create([
                (isset($lastEstimate) ?  $idEstNum= intval(substr($lastEstimate->estimate_number, 4, 4)) : $idEstNum=0),
                $idEstNum = $idEstNum + 1,
                (($idEstNum < 1000) ? $formatedEstNumb = str_pad($idEstNum,4, "0", STR_PAD_LEFT) : $formatedEstNumb = $idEstNum),
                $formatedEstNumb = "DV-" . $formatedEstNumb ."-". $currentYear,
                'estimate_number' => $formatedEstNumb,
               // $dt= date('Y-m-d H:i:s', strtotime($request->estimate_Date),
                'estimate_date' => date('Y-m-d H:i:s', strtotime($request->estimate_Date)),
                $dt= (isset ($request->Due_date) ? date('Y-m-d H:i:s', strtotime($request->Due_date)) : null),
                'prestation_date' => $dt,
                'object' => $request->objet,
                'ice' => $request->ICE,
               // 'ref_bc'  => $request->REF_BC,
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

        $estimate_id = $estimate->id;

        $tableDataPres =  json_decode($request->arrayPrestation);
        if (isset($tableDataPres) && count($tableDataPres)> 0) {
            foreach ($tableDataPres as $key => $value){
                $tva = (float) substr($tableDataPres[$key]->TVA, 0, 2);
                //  $tva =  1 + ($tva/100);
                $tva =  ($tva/100);
                estimatesPrestation::create([
                    'estimate_id' => $estimate_id,
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
                estimatesFees::create([
                    'estimate_id' => $estimate_id,
                    'description' => trim($tableFees[$key]->Description),
                    'amount' =>  $tableFees[$key]->Montant,
                    'user' => (Auth::user()->username),
                ]);
            }
        }
        session()->flash('Add', 'Devis enregistré avec succés.');
        return redirect("estimates_details/".$estimate_id);
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        //
        //
        $estimate =  estimates::where('id',$id)->first();
        $tableDataPres  = estimatesPrestation::where('estimate_id',$id)->get();
        $tableFees  = estimatesFees::where('estimate_id',$id)->get();

        return view('estimates.recap_estimate', compact('estimate','tableDataPres', 'tableFees'));


    }

    /**
     * Edit the form for editing the specified resource.
     */

    public function edit(estimates $estimate)
    {
        $societes = societe::all();
        $missionTypes = missionType::all();
        $tableDataPres  = estimatesPrestation::where('estimate_id',$estimate->id)->get();
        $tableFees  = estimatesFees::where('estimate_id',$estimate->id)->get();

        return view ('estimates.edit_estimate', compact('estimate','tableDataPres', 'tableFees', 'societes', 'missionTypes'));
    }
    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, estimates $estimate)
    {
        //
        $validated = Validator::make($request->all(),[
            'estimate_Date' => 'bail|required|date|',
            'Due_date' => 'bail|nullable| ',
            'detail' => 'bail|required|',
            'societe' => 'bail|required|',
            'missionType' => 'bail|required|',
        ]);
        $validated->after(function($validated) use ($request){
            $yearInvD = Carbon::createFromFormat('d-m-Y', $request->estimate_Date)->format('Y');
            $currentDevNumYear =  substr($request->numDev, 8, 4);
            if ($yearInvD != $currentDevNumYear){
                $validated->errors()->add(
                    'estimate_Date',
                    'Date devis ne peut être différent de l\'année  : ' . $currentDevNumYear
                );
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
        if ($request->avance > 0 && $request->TotalTTC2 > $request->avance ){
            $stt = 'Partiellement payée';
            $valstat = 2;
        } elseif  ($request->avance > 0 && $request->TotalTTC2 <= $request->avance) {
            $stt = 'Payée';
            $valstat = 3;
        }

        $estimates = estimates::findOrFail($estimate->id);

        $estimates->update([
            $dt= date('Y-m-d H:i:s', strtotime($request->estimate_Date)),
            'estimate_date' => $dt,
            $dt= (isset ($request->Due_date) ? date('Y-m-d H:i:s', strtotime($request->Due_date)) : null),
            'prestation_date' => $dt,
            'object' => $request->objet,
            'ice' => $request->ICE,
          //  'ref_bc'  => $request->REF_BC,
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
        ]);

        $estimate_id = $estimate->id;
        estimatesPrestation::where('estimate_id',$estimate_id)->forceDelete();
        $tableDataPres =  json_decode($request->arrayPrestation);
        if (isset($tableDataPres) && count($tableDataPres)> 0) {
            foreach ($tableDataPres as $key => $value){
                $tva = (float) substr($tableDataPres[$key]->TVA, 0, 2);
                //  $tva =  1 + ($tva/100);
                $tva =  ($tva/100);
                estimatesPrestation::create([
                    'estimate_id' => $estimate_id,
                    'description' => trim($tableDataPres[$key]->Description),
                    'quantity' =>  $tableDataPres[$key]->Quantite,
                    'amount'  => $tableDataPres[$key]->Montant,
                    'VAT'  => $tva,
                    'user' => (Auth::user()->username),
                ]);
            }
        }
        estimatesFees::where('estimate_id',$estimate_id)->forceDelete();
        $tableFees =  json_decode($request->arrayFees);
        if (isset($tableFees) && count($tableFees)> 0) {
            foreach ($tableFees as $key => $value){
                estimatesFees::create([
                    'estimate_id' => $estimate_id,
                    'description' => trim($tableFees[$key]->Description),
                    'amount' =>  $tableFees[$key]->Montant,
                    'user' => (Auth::user()->username),
                ]);
            }
        }

        session()->flash('Status_Update');
        return redirect('/estimates');
    }


    /**
     * Print the specified resource in storage.
     */
    public function print_estimate($id)
    {
        $estimate = estimates::where('id', $id)->first();

        $tableDataPres  = estimatesPrestation::where('estimate_id',$id)->get();
        $tableFees  = estimatesFees::where('estimate_id',$id)->get();

        $pdf = Pdf::loadView('estimates.print_estimate', ['estimate' => $estimate, 'tableDataPres' => $tableDataPres, 'tableFees' => $tableFees]);

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
    public function print_estimate_no_logo($id)
    {
        $estimate = estimates::where('id', $id)->first();

        $tableDataPres  = estimatesPrestation::where('estimate_id',$id)->get();
        $tableFees  = estimatesFees::where('estimate_id',$id)->get();

        $pdf = Pdf::loadView('estimates.print_estimate_nlogo', ['estimate' => $estimate, 'tableDataPres' => $tableDataPres, 'tableFees' => $tableFees]);

        $pdf->output();
        $domPdf = $pdf->getDomPDF();
        $canvas = $domPdf->getCanvas();
        // $canvas->page_text(10, 10, "Page {PAGE_NUM} / {PAGE_COUNT}", null, 10, [0, 0, 0]);
        /* Set Page Number to Footer */
        $canvas->page_text(272, $canvas->get_height() - 15, "Page {PAGE_NUM} / {PAGE_COUNT}", null, 8, [0, 0, 0]);
        return $pdf->download();
    }


    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Request $request, estimates $estimates)
    {

        $id_page =$request->id_page;
        $estimates = $estimates::findOrFail($request->estimate_id);
        if (!$id_page==2) {
            if (auth()->user()->hasRole('admin')) {
                $estimates->forceDelete();
                session()->flash('delete_estimate');
            }else{
                // Return an error response to the user
                return response()->json([
                    "error" => "Failed to process transaction. Unauthorized user"
                ], 303);
            }
        }
        else {
            $estimates->delete();
            $pres = estimatesPrestation::where('estimate_id',$request->estimate_id)->get();
            $pres->each->delete();
            $fees = estimatesFees::where('estimate_id',$request->estimate_id)->get();
            $fees->each->delete();
            session()->flash('archive_estimate');
        }
        return redirect('/estimates');
    }
}
