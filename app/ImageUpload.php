<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ImageUpload extends Model
{
    protected $fillable = ['filename','university_id'];


     public function university()
    {
        return $this->belongsTo('App\University');
    }
}
