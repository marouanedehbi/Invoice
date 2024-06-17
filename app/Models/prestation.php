<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class prestation extends Model
{
    use SoftDeletes;
    use HasFactory;
    protected $fillable = [
        'invoice_id',
        'description',
        'quantity',
        'amount',
        'VAT',
    ];
    protected $dates = ['deleted_at'];
}
