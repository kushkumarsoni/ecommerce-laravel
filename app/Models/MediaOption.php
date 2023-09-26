<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MediaOption extends Model
{
    use HasFactory;
    protected $guarded = ['id'];
    protected $fillable = ['id','title','alt_title','thumbnail','large_image','option_value','created_at','updated_at'];
}
