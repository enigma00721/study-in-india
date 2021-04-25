<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOnlineAppliesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('online_applies', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->timestamps();

            // $table->string('status')->default('processing')->nullable();
            $table->string('name',190);
            $table->string('mobile_number',20);
            $table->string('gender',20);
            $table->string('dob',50);
            $table->string('email',50);
            $table->string('address',100);
            $table->string('district',40);
            $table->string('parent_name',40);
            $table->string('parent_relationship',40);
            $table->string('parent_address',40);
            $table->string('parent_occupation',40);
            $table->string('parent_contact',20);
            $table->string('level',20);
            $table->string('discipline',20);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('online_applies');
    }
}
