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
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('email')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->string('shop_name', 255)->nullable();
			$table->string('shop_url', 255)->nullable();
            $table->string('phone', 50)->nullable();
			$table->text('address')->nullable();			
            $table->integer('country_id')->nullable();
			$table->integer('state_id')->nullable();
            $table->integer('city_id')->nullable();
			$table->integer('pin_code')->nullable();			
			$table->string('photo', 255)->nullable();
			$table->integer('status')->default(1);
			$table->string('role')->default('user');
            $table->rememberToken();
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
        Schema::dropIfExists('users');
    }
};
