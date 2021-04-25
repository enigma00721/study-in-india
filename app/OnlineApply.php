<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OnlineApply extends Model
{
    protected $table = 'online_applies';
    
    protected $fillable = ['name','gender','mobile_number','dob','email','address',
                    'district' ,'parent_name','parent_relationship',
                    'parent_address','parent_occupation','parent_contact',
                     'level','discipline'
    ];
}
