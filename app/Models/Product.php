<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Product extends Model
{
    use HasFactory,SoftDeletes;
    protected $fillable = [
        'id',
        'title',
        'slug',
        'f_thumbnail',
        'short_desc',
        'description',
        'extra_desc',
        'cost_price',
        'sale_price',
        'old_price',
        'start_date',
        'end_date',
        'is_discount',
        'is_stock',
        'sku',
        'stock_status_id',
        'stock_qty',
        'u_stock_qty',
        'category_ids',
        'cat_id',
        'sub_category_id',
        'brand_id',
        'collection_id',
        'label_id',
        'variation_color',
        'variation_size',
        'tax_id',
        'is_featured',
        'is_publish',
        'user_id',
        'lan',
        'og_title',
        'og_image',
        'og_description',
        'og_keywords',
        'created_at',
        'deleted_at',
        'updated_at'
    ];

    public function scopePublished($query){
        $query->where('is_publish',1);
    }
}
