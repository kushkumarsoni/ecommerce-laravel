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
        Schema::create('product_sub_categories', function (Blueprint $table) {
            $table->id();
            $table->string('name',191)->nullable();
            $table->string('slug',255);
            $table->text('description')->nullable();           
            $table->string('lan',100)->nullable();
            $table->integer('product_category_id')->nullable();            
            $table->integer('is_publish')->nullable();
            $table->text('og_title')->nullable();
            $table->text('og_image')->nullable();
            $table->text('og_description')->nullable();
            $table->text('og_keywords')->nullable();
            $table->softDeletes();
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
        Schema::dropIfExists('product_sub_categories');
    }
};
