<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserStatus extends Model
{
    use HasFactory;
    protected $guarded  = ['id'];
    protected $table    = "user_status";
    protected $fillable = ['id','status','created_at','updated_at'];
}
