<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Scopes\StatusScope;

class Discipline extends Model
{
    protected $table = 'disciplines';
    protected $fillable = ['title','status'];
    
    public function courses()
    {
        return $this->hasMany('App\Course');
    }

    protected static function boot()
    {
        parent::boot();
        static::addGlobalScope(new StatusScope);
    }

}
