<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ProductImage extends Model
{
    use HasFactory,SoftDeletes;
    protected $fillable = ['id','product_id','thumbnail','large_image','desc','created_at','updated_at','deleted_at'];
}
