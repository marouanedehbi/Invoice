<?php

namespace App\Http\Controllers;

use App\Models\invoices;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use Proengsoft\JsValidation\Facades\JsValidatorFacade as JsValidator;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {

        $this->middleware('auth');
       // $this->middleware(['permission:dashboard'], ['only' => ['home', 'dashboard']]);
       // $this->middleware(['permission:estimate'], ['only' => ['home']]);
         $this->middleware('role_or_permission:admin|DIRECTION|dashboard' , ['only' => ['home', 'dashboard']]);
         $this->middleware('role_or_permission:BO',   ['only' => ['home']]);
    }
    function debug_to_console($data) {
       // echo "<script>console.log('Debug Objects: ==>  ');</script>";
       // $output = $data;
        $output = json_encode($data);

        echo "<script>console.log('Debug Objects: " . $output . "'  );</script>";
    }



    /**
     * Show the application dashboard.
     *
     */
    public function dashboard(Request $request)
    {
        $startDate = $request->sDate;
        $endtDate = $request->eDate;
       // $callAjax = $request->call;
        $currentYear = date("Y");

        $query = invoices::query();
        if (isset($startDate) &&  ($endtDate) )
            $query->whereBetween('invoice_Date',[$startDate,$endtDate]);
        elseif (!$request->ajax())// (strcmp($callAjax , "AJAX")!=0)
            $query->whereYear('invoice_Date', $currentYear);

        $dataInvs =  $query->selectRaw('COUNT(*) as countInv')
                     ->selectRaw('SUM(totalTTC2) as sumTTC')
                     ->selectRaw('societe_id as societe_id')
                     ->selectRaw('value_status as value_status')
					// ->selectRaw('SUM(advance) as sumPPTTCENC')
                    ->groupBy('societe_id', 'value_status')
                    ->orderBy('societe_id')
                    ->orderBy('value_status')
                    ->get()
                    ->toArray();

        $sumttc = $invcnt = $ttcPayInv= $ttcPPayInv = $ttcNPayInv =
        $invPYAby = $invPPAby = $invNPAby = $invPYSD = $invPPSD =
        $invNPSD = $caAby = $caSD = $sumPPTTCENC = 0;

        foreach ($dataInvs as $dataInv ){
            $sumttc += $dataInv['sumTTC'];
            $invcnt += $dataInv['countInv'];

            (($dataInv['value_status']  == 1) ? $ttcNPayInv += $dataInv['sumTTC'] : $ttcNPayInv);
            (($dataInv['value_status'] == 2) ?  $ttcPPayInv += $dataInv['sumTTC'] : $ttcPPayInv);
            (($dataInv['value_status'] == 3) ?  $ttcPayInv += $dataInv['sumTTC'] : $ttcPayInv);

            (($dataInv['societe_id'] == 1 && $dataInv['value_status'] == 1 ) ? $invNPAby += $dataInv['countInv'] : $invNPAby);
            (($dataInv['societe_id'] == 1 && $dataInv['value_status'] == 2 ) ? $invPPAby += $dataInv['countInv'] : $invPPAby);
            (($dataInv['societe_id'] == 1 && $dataInv['value_status'] == 3 ) ? $invPYAby += $dataInv['countInv'] : $invPYAby);

            (($dataInv['societe_id'] == 2 && $dataInv['value_status'] == 1 ) ? $invNPSD += $dataInv['countInv'] : $invNPSD);
            (($dataInv['societe_id'] == 2 && $dataInv['value_status'] == 2 ) ? $invPPSD += $dataInv['countInv'] : $invPPSD);
            (($dataInv['societe_id'] == 2 && $dataInv['value_status'] == 3 ) ? $invPYSD += $dataInv['countInv'] : $invPYSD);

            (($dataInv['societe_id']  == 1) ? $caAby += $dataInv['sumTTC'] : $caAby);
            (($dataInv['societe_id']  == 2) ? $caSD += $dataInv['sumTTC'] : $caSD);

			// (($dataInv['value_status'] == 2) ?  $sumPPTTCENC += $dataInv['sumPPTTCENC'] : $sumPPTTCENC);
        }

        $totTTCINV = $sumttc;
        $invCount = $invcnt;
        $totTTCNPayINV = $ttcNPayInv;
        $totTTCPPayINV = $ttcPPayInv;
        $totTTCPayINV = $ttcPayInv;

        $query = invoices::query();
        if (isset($startDate) &&  ($endtDate))
            $query->whereBetween('payment_date',[$startDate,$endtDate]);
        elseif (!$request->ajax()) // (strcmp($callAjax , "AJAX")!=0)
                $query->whereYear('payment_date', $currentYear);

        $dataEncs =  $query
            ->selectRaw('SUM(advance) as sumTTCENC')
            ->selectRaw('societe_id as societe_id')
            ->groupBy('societe_id')
            ->get()
            ->toArray();
        $caAbyEnc = $caSDEnc = 0;
        foreach ($dataEncs as $dataEnc ){
            (($dataEnc['societe_id']  == 1) ? $caAbyEnc += $dataEnc['sumTTCENC'] : $caAbyEnc);
            (($dataEnc['societe_id']  == 2) ? $caSDEnc += $dataEnc['sumTTCENC'] : $caSDEnc);
        }

        $datas = [
            'dataInv' => [$totTTCINV , $invCount, $totTTCNPayINV, $totTTCPPayINV, $totTTCPayINV],
            'dataFactPay' => [$invPYAby, $invPYSD],
            'dataFactPP' => [$invPPAby, $invPPSD],
            'dataFactNP' => [$invNPAby, $invNPSD],
            'dataCAFact' => [$caAby, $caSD],
            'dataCAEnc' => [$caAbyEnc, $caSDEnc],
        ];
        if ($request->ajax())  // if (isset($callAjax) &&  strcmp($callAjax , "AJAX") == 0 )
            return $datas;

        return view('dashboard', compact(  'datas'));
    }
    public function index()
    {
        if (auth()->user()->hasRole('DIRECTION')) {
            return redirect("/dashboard");
        }
        return redirect("/estimates");

    }

}
