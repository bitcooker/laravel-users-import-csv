<?php

namespace App;

class User extends BaseModel
{
    protected $fillable = [
        'name',
        'address',
        'phone',
        'gender_id',
    ];

    public function getGenderNameAttribute()
    {
        return Gender::getName($this->gender_id);
    }
}
