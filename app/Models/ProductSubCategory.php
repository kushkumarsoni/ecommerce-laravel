<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ProductSubCategory extends Model
{
    use HasFactory,SoftDeletes;

    protected $fillable = ['name',
                            'slug',
                            'description',
                            'lan',
                            'product_category_id',
                            'is_publish',
                            'og_title',
                            'og_image',
                            'og_description',
                            'og_keywords'];

    public function scopePublished($query){
        $query->where('is_publish',1);
    }

    public function category(): BelongsTo
    {
        return $this->belongsTo(ProductCategory::class, 'product_category_id', 'id')->select('id','name','slug');
    }
}
