<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ProductCategory extends Model
{
    use HasFactory,SoftDeletes;
    protected $fillable = ['id',
                        'name',
                        'slug',
                        'thumbnail',
                        'subheader_image',
                        'description',
                        'layout',
                        'lan',
                        'parent_id',
                        'is_subheader',
                        'is_publish',
                        'og_title',
                        'og_description',
                        'og_keywords',
                        'created_at',
                        'updated_at',
                        'deleted_at'];
    
    public function scopePublished($query) {
        $query->where('is_publish',1);
    }                       
}
