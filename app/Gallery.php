<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Gallery extends Model
{
    public static function thubnails_photos()
    {
        $photos = Gallery::select('image')->latest()->take(4)->get();
        return $photos;
    }
}
