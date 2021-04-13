<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Scopes\StatusScope;


class University extends Model
{
    protected $table = 'universities';
    protected $fillable = ['name','description','facilities','location','image','status'];

    // relationship
    public function courses()
    {
        return $this->hasMany('App\Course');
    }

    // relationship models delete
    public function delete()
    {
        // delete all related courses 
        $this->courses()->delete();
        // delete the university
        return parent::delete();
    }

    // add global scope
    protected static function boot()
    {
        parent::boot();
        static::addGlobalScope(new StatusScope);
    }
}
