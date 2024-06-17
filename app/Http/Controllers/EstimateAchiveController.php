<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\estimates;
use App\Models\estimatesFees;
use App\Models\estimatesPrestation;

class EstimateAchiveController extends Controller
{
    public function __construct()
    {

        $this->middleware('auth');
        $this->middleware(['role_or_permission:admin|DIRECTION|BO']);
    }

    public function index()
    {
        $estimates = estimates::onlyTrashed()->orderBy('estimate_number','desc')->get();
        return view('estimates.archive_estimates', compact('estimates'));
    }

    /**
     * Show the form for creating a new resource.
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
        $estimate =  estimates::withTrashed()->where('id',$id)->first();
           // estimates::where('id',$id)->first();
        $tableDataPres  = estimatesPrestation::withTrashed()->where('estimate_id',$id)->get();
        $tableFees  = estimatesFees::withTrashed()->where('estimate_id',$id)->get();

        return view('estimates.recap_estimate', compact('estimate','tableDataPres', 'tableFees'));
    }

    /**
     * Show the form for editing the specified resource.
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
        $id = $request->estimate_id;
        $pres = estimatesPrestation::withTrashed()->where('estimate_id', $id)->restore();
        $fees = estimatesFees::withTrashed()->where('estimate_id', $id)->restore();
        $estimates = estimates::withTrashed()->where('id', $id)->restore();

        session()->flash('restore_estimate');
        return redirect('/estimates');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Request $request)
    {
        if (auth()->user()->hasRole('admin')) {
            $estimates = estimates::withTrashed()->where('id', $request->estimate_id)->first();
            $estimates->forceDelete();
            $pres = estimatesPrestation::withTrashed()->where('estimate_id', $request->estimate_id);
            $pres->forceDelete();
            $fees = estimatesFees::withTrashed()->where('estimate_id', $request->estimate_id);
            $fees->forceDelete();
            session()->flash('delete_estimate');
            return redirect('estimate_archive');
        }else{
            // Return an error response to the user
            return response()->json([
                "error" => "Failed to process transaction. Unauthorized user"
            ], 303);
        }



    }
}
