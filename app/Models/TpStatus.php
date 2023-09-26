<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TpStatus extends Model
{
    use HasFactory;
    protected $table = "tp_status";
    protected $fillable = ['id','status','created_at','updated_at'];
}
