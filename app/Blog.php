<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    protected $table = 'blogs';
    protected $fillable = ['title','lang','excerpt','content','blog_categories_id','tags','image','user_id'];

    // accesors
    // public function getCreatedAtAttribute($date)
    // {
    // return \Carbon\Carbon::createFromFormat('Y-m-d H:i:s', $date)->diffForHumans();
    // }

    public function getCreatedAtFormat()
    {
        return \Carbon\Carbon::createFromFormat('Y-m-d H:i:s', $this->attributes['created_at'])->diffForHumans();
    }

    // relationship
    public function category(){
        return $this->belongsTo('App\BlogCategory','blog_categories_id');
    }
    public function user(){
        return $this->belongsTo('App\Admin','user_id');
    }

}
