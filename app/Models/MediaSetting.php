<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MediaSetting extends Model
{
    use HasFactory;
    
    protected $guarded = ['id'];
    protected $fillable = ['id','media_type','media_desc','media_width','media_height','created_at','updated_at'];
}
