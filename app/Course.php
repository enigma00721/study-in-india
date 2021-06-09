<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    protected $table = 'courses';
    protected $fillable = ['title' , 'course_duration',
                            'elligibility' , 'description',
                            'status' , 'discipline_id' , 'level_id'];


    // old relationships
    // public function university()
    // {
    //     return $this->belongsTo('App\University');
    // }
    public function universities()
    {
        return $this->belongsToMany('App\University')->withPivot('seats', 'fee');
    }
    public function level()
    {
        return $this->belongsTo('App\Level');
    }
    public function discipline()
    {
        return $this->belongsTo('App\Discipline');
    }
}
