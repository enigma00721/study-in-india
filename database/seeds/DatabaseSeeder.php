<?php

use Illuminate\Database\Seeder;
use App\Admin;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
        // admin create
        // developer create
        Admin::create([
	            'name' => str_random(8),
                'username'=> 'demo',
	            'email' => 'demo@demo.com',
	            'email_verified' => 0,
                'role' => 2,
                'image' => 80,
                'remember_token' => '2021-06-07',
                'created_at' => '2021-06-07 22:55:03',
                'updated_at' => '2021-06-07 22:55:03',
	            'password' => bcrypt('demo1234')
	        ]);
    }
}
