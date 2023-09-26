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
        Schema::create('order_items', function (Blueprint $table) {
            $table->id();
            $table->integer('order_master_id')->nullable();
            $table->integer('customer_id')->nullable();
            $table->integer('seller_id')->nullable();
            $table->integer('product_id')->nullable();
            $table->string('variation_size')->nullable();
            $table->string('variation_color')->nullable();
            $table->integer('quantity')->nullable();
            $table->double('price')->nullable();
            $table->double('total_price')->nullable();
            $table->double('tax')->nullable();
            $table->double('discount')->nullable();
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
        Schema::dropIfExists('order_items');
    }
};
