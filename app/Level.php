<?php

namespace App;

use App\Traits\CacheClear;
use Illuminate\Database\Eloquent\Model;
use App\Scopes\StatusScope;



class Level extends Model
{
    use CacheClear;

    protected $table = 'levels';
    protected $fillable = ['title','status','position'];

    public function courses()
    {
        return $this->hasMany('App\Course');
    }

    // add global scope
    protected static function boot()
    {
        parent::boot();
        static::addGlobalScope(new StatusScope);
    }
    
}
