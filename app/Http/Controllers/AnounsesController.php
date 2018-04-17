<?php

namespace App\Http\Controllers;

use App\Anounse;
use Illuminate\Http\Request;

class AnounsesController extends Controller
{
    public function index()
    {
        $posts = Anounse::where('status', 'published')->paginate(1);

        return view('anounses', compact('posts'));
    }

    public function post($id = null)
    {
        $post = Anounse::where('id', $id)->firstOrFail();

        $previous = Anounse::where('id', '<', $post->id)->orderBy('id','desc')->first();

        $next = Anounse::where('id', '>', $post->id)->orderBy('id')->first();

        return view('anounse', compact('post', 'previous', 'next'));
    }

    public function search(Request $request)
    {
        $request->validate([
            'search' => 'required|max:255',
        ]);

        $query = $request->search;

        $posts = Anounse::where('status', 'published')
            ->where('title', 'LIKE', '%' . $query . '%')
            ->paginate(1);

        return view('search', compact('posts', 'query'));
    }
}
