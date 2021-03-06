<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class HeaderSlider extends Model
{
    protected $table = 'header_sliders';
    protected $fillable = ['title','lang','description','btn_01_status','btn_01_text','btn_01_url','image'];

    
    // accessor modified
    public function getBtnUrlAttribute(){
        $val = $this->attributes['btn_01_url'];
        return (int)explode('/', $val)[0];
    }
}
