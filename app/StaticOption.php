<?php

namespace App;
use App\Traits\CacheClear;


use Illuminate\Database\Eloquent\Model;

class StaticOption extends Model
{
    use CacheClear;
    protected $table = 'static_options';
    protected $fillable = ['option_name','option_value'];
}
