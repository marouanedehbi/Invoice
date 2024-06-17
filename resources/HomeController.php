<?php

namespace App\Http\Controllers;

use App\Models\invoices;
use Illuminate\Support\Carbon;
use Illuminate\Http\Request;

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

    /**
     * Show the application dashboard.
     *
     */
    public function dashboard(Request $request)
    {
        $startDate = $request->sDate;
        $endtDate = $request->eDate;

        $query = invoices::query();
        if (isset($startDate) &&  ($endtDate) )
            $query->whereBetween('invoice_Date',[$startDate,$endtDate]);
        $invNPAby = $query
                    ->where([
                    ['societe_id', '=', 1],
                    ['value_status', '=', '1'],
                ])->count();

        $query = invoices::query();
        if (isset($startDate) &&  ($endtDate) )
            $query->whereBetween('invoice_Date',[$startDate,$endtDate]);
        $invNPSD = $query // invoices::query()
                    ->where([
                        ['societe_id', '=', 2],
                        ['value_status', '=', '1'],
                    ])->count();

        $query = invoices::query();
        if (isset($startDate) &&  ($endtDate) )
            $query->whereBetween('invoice_Date',[$startDate,$endtDate]);
        $invPPAby = $query // invoices::query()
            ->where([
                ['societe_id', '=', 1],
                ['value_status', '=', '2'],
            ])->count();

        $query = invoices::query();
        if (isset($startDate) &&  ($endtDate) )
            $query->whereBetween('invoice_Date',[$startDate,$endtDate]);
        $invPPSD = $query // invoices::query()
            ->where([
                ['societe_id', '=', 2],
                ['value_status', '=', '2'],
            ])->count();

        $query = invoices::query();
        if (isset($startDate) &&  ($endtDate) )
            $query->whereBetween('invoice_Date',[$startDate,$endtDate]);
        $invPYAby = $query // invoices::query()
            ->where([
                ['societe_id', '=', 1],
                ['value_status', '=', '3'],
            ])->count();

        $query = invoices::query();
        if (isset($startDate) &&  ($endtDate) )
            $query->whereBetween('invoice_Date',[$startDate,$endtDate]);
        $invPYSD = $query // invoices::query()
            ->where([
                ['societe_id', '=', 2],
                ['value_status', '=', '3'],
            ])->count();//  invoices::where('societe_id', 2)->count() * 100) ;

        $query = invoices::query();
        if (isset($startDate) &&  ($endtDate) )
            $query->whereBetween('invoice_Date',[$startDate,$endtDate]);
        $caAby = $query // invoices::query()
            ->where([
            ['societe_id', '=', 1],
        ])->sum('totalTTC2');// . " MAD";

        $query = invoices::query();
        if (isset($startDate) &&  ($endtDate) )
            $query->whereBetween('invoice_Date',[$startDate,$endtDate]);
        $caSD = $query // invoices::query()
             ->where([
            ['societe_id', '=', 2],
        ])->sum('totalTTC2'); // . " MAD";

        $query = invoices::query();
        if (isset($startDate) &&  ($endtDate) )
            $query->whereBetween('payment_date',[$startDate,$endtDate]);
        $caAbyEnc = $query // invoices::query()
            ->where([
                ['societe_id', '=', 1],
            ])->sum('advance');// . " MAD";

        $query = invoices::query();
        if (isset($startDate) &&  ($endtDate) )
            $query->whereBetween('payment_date',[$startDate,$endtDate]);
        $caSDEnc = $query // invoices::query()
            ->where([
                ['societe_id', '=', 2],
            ])->sum('advance');// . " MAD";

        $query = invoices::query();
        if (isset($startDate) &&  ($endtDate) )
            $query->whereBetween('invoice_Date',[$startDate,$endtDate]);
        $totTTCINV = $query->sum('totalTTC2');

        $query = invoices::query();
        if (isset($startDate) &&  ($endtDate) )
            $query->whereBetween('invoice_Date',[$startDate,$endtDate]);
        $invCount = $query->count();

        $query = invoices::query();
        if (isset($startDate) &&  ($endtDate) )
            $query->whereBetween('invoice_Date',[$startDate,$endtDate]);
        $totTTCNPayINV = $query->where('value_status','=', 1)->sum('totalTTC2');

        $query = invoices::query();
        if (isset($startDate) &&  ($endtDate) )
            $query->whereBetween('invoice_Date',[$startDate,$endtDate]);
        $totTTCPPayINV = $query->where('value_status','=',  2)->sum('totalTTC2');

        $query = invoices::query();
        if (isset($startDate) &&  ($endtDate) )
            $query->whereBetween('invoice_Date',[$startDate,$endtDate]);
        $totTTCPayINV = $query->where('value_status','=',  3)->sum('totalTTC2');

        $datas = [
            'dataInv' => [$totTTCINV , $invCount, $totTTCNPayINV, $totTTCPPayINV, $totTTCPayINV],
            'dataFactPay' => [$invPYAby, $invPYSD],
            'dataFactPP' => [$invPPAby, $invPPSD],
            'dataFactNP' => [$invNPAby, $invNPSD],
            'dataCAFact' => [$caAby, $caSD],
            'dataCAEnc' => [$caAbyEnc, $caSDEnc],
        ];
        $callAjax = $request->call;
        if (isset($callAjax) &&  strcmp($callAjax , "AJAX") == 0 )
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
