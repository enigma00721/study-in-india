<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    protected $table = 'courses';
    protected $fillable = ['title' , 'fee' , 'seats' , 'course_duration',
                            'elligibility' , 'description',
                            'status' , 'discipline_id' , 'level_id' , 'university_id'];


    public function university()
    {
        return $this->belongsTo('App\University');
    }
    public function level()
    {
        return $this->belongsTo('App\Level');
    }
}
