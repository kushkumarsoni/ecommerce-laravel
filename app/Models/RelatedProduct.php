<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class RelatedProduct extends Model
{
    use HasFactory,SoftDeletes;
    protected $fillable = ['id','product_id','related_item_id','created_at','updated_id','deleted_at'];
}
