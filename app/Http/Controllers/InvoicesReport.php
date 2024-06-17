<?php

namespace App\Http\Controllers;

use App\Models\missionType;
use App\Models\societe;
use Illuminate\Http\Request;
use App\Models\invoices;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Validator;

class InvoicesReport extends Controller
{

    function __construct()

    {
        $this->middleware('auth');
        $this->middleware(['role_or_permission:admin|DIRECTION']);

    }
    public function index(){
        $societes = societe::all();
        $missionTypes = missionType::all();
        return view('reports.invoices_report', compact('societes', 'missionTypes'));

    }

    public function Search_invoices(Request $request){

        $societes = societe::all();
        $missionTypes = missionType::all();
        $rdio = $request->rdio;

        // في حالة البحث بنوع الفاتورة
        if ($rdio == 1) {

            $validated = Validator::make($request->all(),[
                'start_at' => 'date|nullable',
                'end_at' => 'date|nullable|after_or_equal:start_at',
            ]);
            if ($validated->fails())
            {
                return Redirect::to('/invoices_report')
                    ->withErrors($validated)
                    -> withInput();
                /*return redirect()->back()
                    -> withErrors($validated)
                    -> withInput();*/


            }
            $societes = societe::all();
            $missionTypes = missionType::all();
            $query = invoices::query();
            if ($request->missionType > 0 )
                $query->where('mission_type_id', $request->missionType);

            if ($request->societe > 0 )
                $query->where('societe_id', $request->societe);

            $client = $request->client;
            if (isset($client) && !empty($client))
                $query->where('client_name', $client);

            $mntTTC = $request->montantTTC;
            if (isset($mntTTC) && !empty($mntTTC))
                $query->where('totalTTC2', $mntTTC);

            $start_at = $request->start_at;
            $end_at = $request->end_at;

            if ( isset($start_at) && !empty($start_at)){
              //  $query->where('invoice_Date', '>=', '2024-05-10');
                $dt= date('Y-m-d H:i:s', strtotime($start_at));
                $query->where('invoice_Date', '>=', $dt);
            }
            if (isset($end_at) && !empty($end_at)){
                $dt= date('Y-m-d H:i:s', strtotime($end_at));
                $query->where('invoice_Date', '<=' ,$dt);
            }

            $start_at = $request->startPay_at;
            $end_at = $request->endPay_at;

            if ( isset($start_at) && !empty($start_at)){
                //  $query->where('invoice_Date', '>=', '2024-05-10');
                $dt= date('Y-m-d H:i:s', strtotime($start_at));
                $query->where('payment_date', '>=', $dt);
            }
            if (isset($end_at) && !empty($end_at)){
                $dt= date('Y-m-d H:i:s', strtotime($end_at));
                $query->where('payment_date', '<=' ,$dt);
            }

            $invoices = $query->orderBy('invoice_date', 'DESC')->orderBy('invoice_number', 'DESC')->get();


          /*  $dataInvs =  $query->selectRaw('SUM(totalTTC) as sumTTC')
                               ->selectRaw('SUM(totalTTC2) as sumTTC2')
                                ->selectRaw('SUM(totalHT) as sumtotalHT')
                                ->selectRaw('SUM(montantTVA) as sumMontantTVA')
                              ->get()
                              ->toArray();*/
            return view('reports.invoices_report', compact('invoices', 'societes', 'missionTypes'));
        }
//====================================================================
// في البحث برقم الفاتورة
        else {
            $invoices = invoices::select('*')->where('invoice_number','=',$request->invoice_number)
                ->orderBy('invoice_date', 'DESC')
                ->orderBy('invoice_number', 'DESC')->get();
            /*$query = invoices::query()->where('invoice_number','=',$request->invoice_number);
            $dataInvs =  $query->selectRaw('SUM(totalTTC) as sumTTC')
                ->selectRaw('SUM(totalTTC2) as sumTTC2')
                ->selectRaw('SUM(totalHT) as sumtotalHT')
                ->selectRaw('SUM(montantTVA) as sumMontantTVA')
                ->get()
                ->toArray();*/
           // return view('reports.invoices_report')->withDetails($invoices);
            return view('reports.invoices_report', compact('invoices', 'societes', 'missionTypes'));

        }



    }

}
