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
        Schema::create('media_options', function (Blueprint $table) {
            $table->id();
            $table->string('title')->nullable();
            $table->string('alt_title')->nullable();
            $table->string('thumbnail')->nullable();
            $table->string('large_image')->nullable();
            $table->longText('option_value')->nullable();
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
        Schema::dropIfExists('media_options');
    }
};
