<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCourseUniversityTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('course_university', function (Blueprint $table) {

            $table->bigIncrements('id');

            $table->bigInteger('course_id')->unsigned();
            $table->foreign('course_id')->references('id')->on('courses')->onDelete('cascade');

            $table->bigInteger('university_id')->unsigned()->nullable();
            $table->foreign('university_id')->references('id')->on('universities')->onDelete('cascade');

            $table->integer('seats')->nullable();
            $table->integer('fee')->nullable();
            $table->integer('hostel')->nullable();
            $table->integer('mess')->nullable();



        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    // public function down()
    // {
    //     Schema::table('course_university', function (Blueprint $table) {
    //         //
    //     });
    // }
     public function down()
    {
        Schema::dropIfExists('course_university');
    }
}
