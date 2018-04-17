<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Anounse extends Model
{
    public static function thubnails_photos()
    {
        $photos = Anounse::select('id', 'title')->latest()->take(6)->get();
        return $photos;
    }
}
