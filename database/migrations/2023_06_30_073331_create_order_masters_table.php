<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('order_masters', function (Blueprint $table) {
            $table->id();
            $table->string('order_no',191)->nullable();
            $table->string('transaction_no',191)->nullable();
            $table->integer('customer_id')->nullable();
            $table->integer('seller_id')->nullable();
            $table->integer('payment_method_id')->nullable();
            $table->integer('payment_status_id')->nullable();
            $table->integer('order_status_id')->nullable();
            $table->integer('total_qty')->nullable();
            $table->double('total_price')->nullable();
            $table->double('discount')->nullable();
            $table->double('tax')->nullable();
            $table->double('subtotal')->nullable();
            $table->double('total_amount')->nullable();
            $table->text('shipping_title')->nullable();
            $table->double('shipping_fee')->nullable();
            $table->string('name',100)->nullable();
            $table->string('email',100)->nullable();
            $table->string('phone',15)->nullable();
            $table->string('country',191)->nullable();
            $table->string('state',15)->nullable();
            $table->string('zip_code',50)->nullable();
            $table->string('city',191)->nullable();
            $table->text('address')->nullable();
            $table->text('comments')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('order_masters');
    }
};
