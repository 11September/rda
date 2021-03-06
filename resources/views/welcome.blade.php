@extends('layouts.master')

@section('css')
    <link rel="stylesheet" href="{{ asset('css/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/owl.theme.default.min.css') }}">
@endsection

@section('content')

    @include('partials.slider')

    <section class="content">
        <div id="basic-waypoint" class="wrapper-main-news-services">
            <div class="wrapper-news-anonses">
                <div class="container">
                    <div class="row reverse">
                        <div class="col-md-8">
                            <h2>ПОДІЇ</h2>
                            <div class="wrapper-news">
                                <div class="news-img">
                                    <a class="hover-image" href="{{ action('NewsController@post', $feature_post->id) }}">
                                        <img src="{{ asset('storage/' . $feature_post->image) }}"
                                             alt="{{ $feature_post->title }}">
                                    </a>

                                    <div class="info-flex">
                                        <p class="abstract">
                                            {{ $feature_post->title }}
                                        </p>
                                        <div class="main-text">
                                            {!! $feature_post->body !!}
                                        </div>
                                    </div>

                                    <div class="news_item_link_padding">
                                        <div class="col-xl-12 col-lg-12 col-md-12 news_item_link">
                                            <div class="row">
                                                <div class="col-xl-6 col-lg-7 col-md-7 col-sm-12 news_item_link_left">
                                                    <div class="calendar">
                                                        <i class="fas fa-calendar-alt"></i>
                                                        <p class="">{{ Carbon\Carbon::parse($feature_post->created_at)->format('d.m.Y') }}</p>
                                                    </div>
                                                </div>
                                                <div class="col-xl-6 col-lg-5 col-md-5 col-sm-12 news_item_link_right">
                                                    <a href="{{ action('NewsController@post', $feature_post->id) }}">
                                                        <span>Докладніше...</span>
                                                    </a>
                                                </div>
                                            </div>
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
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="news">
        <div class="container">
            <h2>Новини</h2>
            <div class="row">
                <div class="col-xl-8 col-lg-8 col-md-12 news_left_block">

                    @foreach($posts as $post)
                        <div class="news_item">
                            <div class="row">
                                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 col-12 news_item_img">
                                    <a class="hover-image" href="{{ action('NewsController@post', $post->id) }}">
                                        <img src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->title }}">
                                    </a>
                                </div>
                                <div class="col-xl-8 col-lg-8 col-md-8 col-sm-12 col-12  news_item_text">
                                    <h3>
                                        {{ $post->title }}
                                    </h3>
                                    <div class="post-content">
                                        {!! $post->body !!}
                                    </div>
                                </div>
                                <div class="news_item_link_padding">
                                    <div class="col-xl-12 col-lg-12 col-md-12 news_item_link">
                                        <div class="row">
                                            <div class="col-xl-6 col-lg-7 col-md-7 col-sm-12 news_item_link_left">
                                                <div class="calendar">
                                                    <i class="fas fa-calendar-alt"></i>
                                                    <p class="">{{ Carbon\Carbon::parse($post->created_at)->format('d.m.Y') }}</p>
                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-lg-5 col-md-5 col-sm-12 news_item_link_right">
                                                <a class="post-item-more"
                                                   href="{{ action('NewsController@post', $post->id) }}">
                                                    <span>Докладніше...</span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach

                    @include('partials.pagination')

                </div>

                <div class="col-xl-4 col-lg-4 news_right_block">
                    @include('partials.anonses')
                </div>
            </div>
        </div>
    </section>

    <section class="gallery">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2>ГАЛЕРЕЯ</h2>

                    @include('partials.gallery-photos')

                    <div class="row center">
                        <a class="post-item-more welcome_all_gallery"
                           href="{{ url('/albums') }}">
                            <span>Переглянути усі галереї</span>
                        </a>
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
            margin: 10,
            items: 1,
            autoplay: true,
            loop: true
        });
    </script>
@endsection
