<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class NewsController extends Controller
{
    public function index()
    {
        return view('news');
    }

    public function post($post = null)
    {
        return view('post');
    }

    public function serach()
    {
        return view('search');
    }
}
