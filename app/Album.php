<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Album extends Model
{
    protected $table = 'albums';

    public static function thubnails_photos()
    {
        $photos = Album::select('id','image', 'created_at')->latest()->take(6)->get();
        return $photos;
    }

    public function photos()
    {
        return $this->hasMany(Photo::class);
    }
}
