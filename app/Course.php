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
        return $this->belongsToMany('App\University')->withPivot('seats', 'fee','hostel','mess');
    }
    public function level()
    {
        return $this->belongsTo('App\Level');
    }
    public function discipline()
    {
        return $this->belongsTo('App\Discipline');
    }



    
    public function getFeeAttribute($value)
    {
        $num = $this->pivot->fee;
        $num = preg_replace("/(\d+?)(?=(\d\d)+(\d)(?!\d))(\.\d+)?/i", "$1,", $num);
        // return 'Rs. '.$this->pivot->fee ;
        return 'Rs. '.$num;
    }
    public function getHostelAttribute($value)
    {
        $num = $this->pivot->hostel;
        $num = preg_replace("/(\d+?)(?=(\d\d)+(\d)(?!\d))(\.\d+)?/i", "$1,", $num);
        return 'Rs. '.$num;
    }
    public function getMessAttribute($value)
    {
        $num = $this->pivot->mess;
        $num = preg_replace("/(\d+?)(?=(\d\d)+(\d)(?!\d))(\.\d+)?/i", "$1,", $num);
        return 'Rs. '.$num;
    }

}
