<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderMaster extends Model
{
    use HasFactory;
    protected $fillable = [
        'order_no',
        'transaction_no',
        'customer_id',
        'seller_id',
        'payment_method_id',
        'payment_status_id',
        'order_status_id',
        'total_qty',
        'total_price',
        'discount',
        'tax',
        'subtotal',
        'total_amount',
        'shipping_title',
        'shipping_fee',
        'name',
        'email',
        'phone',
        'country',
        'state',
        'city',
        'zip_code',
        'address',
        'comments',
    ];

    //pending order
    public function scopePending($query){
        $query->where('order_status_id',1);
    }

    //processing order
    public function scopeProcessed($query){
        $query->where('order_status_id',2);
    }

    //ready for pickup order
    public function scopePickuped($query){
        $query->where('order_status_id',3);
    }

    //completed order
    public function scopeCompleted($query){
        $query->where('order_status_id',4);
    }

    //cenceled order
    public function scopeCanceled($query){
        $query->where('order_status_id',5);
    }
}
