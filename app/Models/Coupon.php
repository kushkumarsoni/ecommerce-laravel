<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Coupon extends Model
{
    use HasFactory,SoftDeletes;
    protected $fillable = ['title','code','expire_date','percentage','is_publish'];

    public function scopePublished($query){
        $query->where('is_publish',1);
    }
}
