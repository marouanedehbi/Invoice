<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class fees extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $fillable = [
        'invoice_id',
        'description',
        'amount',
    ];
    protected $dates = ['deleted_at'];
}

