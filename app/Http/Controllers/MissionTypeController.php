<?php

namespace App\Http\Controllers;

use App\Models\missionType;
use Illuminate\Http\Request;

class MissionTypeController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Get a listing of the resource.
     */
    public function getMissionTypes($id)
    {

        $missionTypes = missionType::where('societe_id',$id)->get();
        return json_encode($missionTypes);
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
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(missionType $missionType)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(missionType $missionType)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, missionType $missionType)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(missionType $missionType)
    {
        //
    }
}
