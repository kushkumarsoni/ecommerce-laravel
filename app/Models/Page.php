<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Page extends Model
{
    use HasFactory,SoftDeletes;

    protected $fillable = ['id',
                            'title',
                            'slug',
                            'content',
                            'thumbnail',
                            'is_publish',
                            'og_title',
                            'og_image',
                            'og_description',
                            'og_keywords',
                            'created_at',
                            'updated_at',
                            'deleted_at'];
}
