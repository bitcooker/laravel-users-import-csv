<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BaseModel extends Model
{
    public static function getNames()
    {
        return self::pluck('name', 'id');
    }

    public static function getName($id)
    {
        $names = self::getNames();

        return $names[$id] ?? null;
    }

    public static function getIds()
    {
        return self::pluck('id');
    }
}
