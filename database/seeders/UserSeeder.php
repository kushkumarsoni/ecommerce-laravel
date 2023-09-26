<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Hash;
use Spatie\Permission\Models\Role;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       $user =  \App\Models\User::create([
            'name' => 'Admin',
            'email' => 'admin@gmail.com',
            'phone' => 7355787097,
            'password'=> Hash::make('admin123456'),
            'status'=>1,
            'role'=>'admin',
            'email_verified_at'=>now(),
            'address'=>'Viraj Khand Gomati Nagar',
            'pin_code'=>226012,
        ]);

        //$role = Role::where('name','admin')->first();

       // $user->assignRole('admin');

    }
}
