<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Shipping extends Model
{
    use HasFactory,SoftDeletes;
    protected $fillable = ['id','title','shipping_fee','desc','is_publish','created_at','updated_at','deleted_at'];
}
