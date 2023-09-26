<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class OfferAds extends Model
{
    use HasFactory,SoftDeletes;
    protected $fillable = ['id','offer_ad_type','title','url','image','desc','is_publish','created_at','updated_at','deleted_at'];
}
