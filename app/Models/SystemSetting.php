<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SystemSetting extends Model
{
    use HasFactory;

    protected $guarded = ['id'];
    protected $fillable = ['id','type','value','created_at','updated_at'];
}
