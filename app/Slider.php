<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Slider extends Model
{
    public static function thubnails_photos()
    {
        $photos = Slider::select('image')->latest()->take(4)->get();
        return $photos;
    }
}
