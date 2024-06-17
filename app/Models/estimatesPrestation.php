<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class estimatesPrestation extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $fillable = [
        'estimate_id',
        'description',
        'quantity',
        'amount',
        'VAT',
    ];
    protected $dates = ['deleted_at'];

}
