<?php

namespace App\Helpers;

class MigrationHelper
{
    public static function create($class, $names)
    {
        foreach ($names as $index => $name) {
            $model = new $class;
            $model->id = $index + 1;
            $model->name = $name;
            $model->save();
        }
    }
}
