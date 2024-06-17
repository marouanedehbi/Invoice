<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class estimates extends Model
{
    use SoftDeletes;
    protected $fillable = [
        'estimate_number',
        'societe_id',
        'mission_type_id',
        'estimate_date',
        'ice',
        'ref_bc',
        'client_name',
        'client_adress',
        'prestation_date',
        'object',
        'detail',
        'mission_type_id',
        'discount',
        'advance',
        'commission',
        'payment_mode',
        'remainder',
        'totalHT',
        'totalHTRem',
        'montantTVA',
        'totalTTC',
        'totalTTC2',
        'status',
        'value_status',
        'payment_date'
    ];
    protected $dates = ['deleted_at'];



    public  function societe()
    {
        return $this->belongsTo('App\Models\societe');
    }
    public function missionType()
    {
        return $this->belongsTo('App\Models\missionType');
    }
}
