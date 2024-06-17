<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\invoices;
use App\Models\prestation;
use App\Models\fees;
class InvoiceAchiveController extends Controller
{
    public function __construct()
    {

        $this->middleware('auth');
        $this->middleware(['role_or_permission:admin|DIRECTION']);
    }
    /**
     * Display a listing of the resource.
     *
     */
    public function index()
    {
        $invoices = invoices::onlyTrashed()->orderBy('invoice_date', 'DESC')->orderBy('invoice_number', 'DESC')->get();
        return view('invoices.archive_Invoices',compact('invoices'));
    }


    /**
     * Show the form for creating a new resource.
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     */
    public function show($id)
    {
        //
        $invoice =  invoices::withTrashed()->where('id',$id)->first();
        $tableDataPres  = prestation::withTrashed()->where('invoice_id',$id)->get();
        $tableFees  = fees::withTrashed()->where('invoice_id',$id)->get();

        return view('invoices.recap_invoice', compact('invoice','tableDataPres', 'tableFees'));
    }

    /**
     * Edit the form for editing the specified resource.
     *
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     */
    public function update(Request $request)
    {
        $id = $request->invoice_id;
        prestation::withTrashed()->where('invoice_id',$id)->restore();
        fees::withTrashed()->where('invoice_id',$id)->restore();
        invoices::withTrashed()->where('id', $id)->restore();

        session()->flash('restore_invoice');
        return redirect('/invoices');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Request $request)
    {
        if (auth()->user()->hasRole('admin')) {
            $invoices = invoices::withTrashed()->where('id',$request->invoice_id)->first();
            $invoices->forceDelete();
            $pres = prestation::withTrashed()->where('invoice_id', $request->invoice_id);
            $pres->forceDelete();
            $fees = fees::withTrashed()->where('invoice_id', $request->invoice_id);
            $fees->forceDelete();
            session()->flash('delete_invoice');
            return redirect('invoice_archive');
        }else{
            // Return an error response to the user
            return response()->json([
                "error" => "Failed to process transaction. Unauthorized user"
            ], 303);
        }


    }
}

