<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Tax extends Model
{
    use HasFactory,SoftDeletes;
    protected $fillable = ['id','title','percentage','is_publish','created_at','deleted_at','updated_at'];
    
}
