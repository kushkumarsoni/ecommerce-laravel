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
        Schema::create('media_settings', function (Blueprint $table) {
            $table->id();
            $table->string('media_type',191);
            $table->string('media_desc',255)->nullable();
            $table->string('media_width',100)->nullable();
            $table->string('media_height',100)->nullable();
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
        Schema::dropIfExists('media_settings');
    }
};
