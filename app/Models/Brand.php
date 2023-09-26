<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Brand extends Model
{
    use HasFactory,SoftDeletes;
    protected $fillable = ['id','name','slug','thumbnail','is_featured','is_publish','lan','created_at','updated_at','deleted_at'];

    public function scopePublished($query){
        $query->where('is_publish',1);
    }
}
