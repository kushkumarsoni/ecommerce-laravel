<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderItem extends Model
{
    use HasFactory;

    protected $fillable = [
        'order_master_id',
        'customer_id',       
        'seller_id',
        'product_id',
        'variation_size',
        'variation_color',
        'quantity',
        'price',
        'total_price',
        'tax',
        'discount',
    ];
}
