<?php

namespace App;

class ImportJob extends BaseModel
{
    protected $fillable = [
        'file_name',
        'status_id',
    ];

    public function getStatusNameAttribute()
    {
        return JobStatus::getName($this->status_id);
    }

    public static function lineToUserArray($data)
    {
        $user = [];
        list(
            $user['name'],
            $user['address'],
            $user['phone'],
            $user['gender_id'],
        ) = $data;

        return $user;
    }
}
