<?php

namespace App\Http\Controllers;

use App\Collegium;
use App\Meeting;
use App\News;
use Illuminate\Http\Request;

class NewsController extends Controller
{
    public function index()
    {
        $posts = News::where('status', 'published')->paginate(10);

        return view('news', compact('posts'));
    }

    public function post($id = null)
    {
        $post = News::where('id', $id)->firstOrFail();

        $previous = News::where('id', '<', $post->id)->orderBy('id','desc')->first();

        $next = News::where('id', '>', $post->id)->orderBy('id')->first();

        return view('post', compact('post', 'previous', 'next'));
    }

    public function collegiums()
    {
        $posts = Collegium::where('status', 'published')->paginate(10);

        return view('collegiums', compact('posts'));
    }

    public function collegium($id = null)
    {
        $post = Collegium::where('id', $id)->firstOrFail();

        $previous = Collegium::where('id', '<', $post->id)->orderBy('id','desc')->first();

        $next = Collegium::where('id', '>', $post->id)->orderBy('id')->first();

        return view('collegium', compact('post', 'previous', 'next'));
    }

    public function meetings()
    {
        $posts = Meeting::where('status', 'published')->paginate(10);

        return view('meetings', compact('posts'));
    }

    public function meeting($id = null)
    {
        $post = Meeting::where('id', $id)->firstOrFail();

        $previous = Meeting::where('id', '<', $post->id)->orderBy('id','desc')->first();

        $next = Meeting::where('id', '>', $post->id)->orderBy('id')->first();

        return view('meeting', compact('post', 'previous', 'next'));
    }

    public function search(Request $request)
    {
        $request->validate([
            'search' => 'required|max:255',
        ]);

        $query = $request->search;


        $posts = News::where('status', 'published')
            ->where('title', 'LIKE', '%' . $query . '%')
            ->orWhere('body', 'LIKE', '%' . $query . '%')
            ->paginate(10);

        return view('search', compact('posts', 'query'));
    }
}
