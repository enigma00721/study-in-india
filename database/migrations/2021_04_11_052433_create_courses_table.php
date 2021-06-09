<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCoursesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('courses', function (Blueprint $table) {
            
            $table->bigIncrements('id');
            $table->timestamps();

            $table->string('title',150);
            $table->string('status')->nullable();
            // $table->integer('fee');
            $table->text('elligibility');
            $table->text('description');
            // $table->integer('seats');
            $table->string('course_duration');

            // foreign keys
            $table->unsignedBigInteger('discipline_id');
            $table->unsignedBigInteger('level_id');
            $table->foreign('discipline_id')->references('id')->on('disciplines');
            $table->foreign('level_id')->references('id')->on('levels');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('courses');
    }
}
