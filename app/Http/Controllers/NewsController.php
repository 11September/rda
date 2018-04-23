<?php

namespace App\Http\Controllers;

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
