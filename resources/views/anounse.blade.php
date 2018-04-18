@extends('layouts.master')

@section('css')
    <link rel="stylesheet" href="{{ asset('css/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/owl.theme.default.min.css') }}">
@endsection

@section('content')
    @include('partials.slider')

    <section class="post-page" id="basic-waypoint">

        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="wrapper-breadcrumbs">
                        <nav class="breadcrumb">
                            <a class="breadcrumb-item" href="{{ url('/') }}">Головна /</a>
                            <a class="breadcrumb-item" href="{{ url('/anounses') }}">Анонси /</a>
                            <a class="breadcrumb-item" href="#"><span class="breadcrumb-item active">{{ $post->title }}</span></a>
                        </nav>
                    </div>

                    <div class="wrapper-single-post-content">
                        <h2>ПОДІЇ</h2>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="wrapper-single-post-image">
                                    <img src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->title }}">
                                </div>
                            </div>


                            <div class="col-md-3">
                                <ul class="single-post-menu">
                                    <li><a class="date" href="#">
                                            <i class="far fa-calendar-alt"></i>
                                            {{ Carbon\Carbon::parse($post->created_at)->format('d.m.Y') }}
                                        </a>
                                    </li>
                                    <li><a class="category" href="#">
                                            <i class="fas fa-folder-open"></i>
                                            Анонс
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-md-9">
                                <div class="wrapper-single-post-heading">
                                    <h5>
                                        {{ $post->title }}
                                    </h5>
                                </div>
                            </div>

                            <div class="col-md-12">
                                <div class="single-post-content">
                                    <p>
                                        {!! $post->body !!}
                                    </p>
                                </div>
                            </div>

                            <div class="col-md-8">
                                <div class="wrapper-single-post-additional">
                                    <ul class="list-inline">
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center blue18" target="_blank" href="#">
                                                <i class="far fa-calendar-alt"></i>{{ Carbon\Carbon::parse($post->created_at)->format('d.m.Y') }}
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center blue18" target="_blank" href="#">
                                                <i class="far fa-clock"></i>
                                                {{ Carbon\Carbon::parse($post->created_at)->format('h.s') }}
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="#">
                                                <i class="fas fa-folder-open"></i>
                                                Анонс
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="wrapper-single-post-additional">
                                    <ul class="list-inline float-right">
                                        <li class="list-inline-item">
                                            <a class="social-icon text-xs-center" target="_blank" href="{{ url('/anounses') }}">
                                                <i class="fas fa-user"></i>Админ.
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-md-4">

                    <h2 class="service-header">ПОСЛУГИ</h2>

                    <div class="wrapper-services">
                        @include('partials.services-list')
                    </div>

                    <div class="wrapper-sigle-post-anonses">
                        <div class="news_right_block">
                            @include('partials.anonses')
                        </div>
                    </div>

                    <h2 class="sigle-post-video-header">BІДЕО</h2>

                    <div class="video-item">
                        <a href="#">
                            <img src="{{ asset('images/video_poster.png') }}" alt="gallery">
                        </a>
                    </div>

                </div>
            </div>
        </div>

        <div class="wrapper-post-controls">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <div class="post-controls">
                            <p>
                                @if (isset($previous))
                                    <a href="{{ action('AnounsesController@post', $previous->id) }}">
                                        <i class="fas fa-angle-left control-arrow-left"></i> Попереднiй анонс
                                    </a>
                                @endif

                                <span>|</span>

                                @if (isset($next))
                                    <a href="{{ action('AnounsesController@post', $next->id) }}">Наступний анонс
                                        <i class="fas fa-angle-right control-arrow-right"></i>
                                    </a>
                                @endif
                            </p>

                            <p>
                                <a href="{{ url('/anounses') }}">Всі анонси <i class="fas fa-angle-double-right control-arrow-right"></i></a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section>


    <section class="links">
        <div class="container">

            <h2>ПОСИЛАННЯ</h2>

            <div class="wrapper-links-content">
                <div class="row">
                    <div class="col-md-2 col-sm-3">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_1.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-md-2 col-sm-3">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_2.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-md-2 col-sm-3">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_3.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-md-2 col-sm-3">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_4.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-md-2 col-sm-3">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_5.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-md-2 col-sm-3">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_6.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-md-2 col-sm-3">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_7.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-md-2 col-sm-3">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_8.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-md-2 col-sm-3">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_9.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-md-2 col-sm-3">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_10.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-md-2 col-sm-3">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_11.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-md-2 col-sm-3">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_12.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-md-2 col-sm-3">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_13.png') }}" alt="link">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

@section('scripts')
    <script src="{{ asset('js/owl.carousel.min.js') }}"></script>
    <script>
        $('.big-slider-body').owlCarousel({
            loop: true,
            margin: 10,
            items: 1
        });
    </script>
@endsection