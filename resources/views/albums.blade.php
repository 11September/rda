@extends('layouts.master')

@section('css')
    <link rel="stylesheet" href="{{ asset('css/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/owl.theme.default.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/jquery.fancybox.min.css') }}" media="screen"/>
@endsection

@section('content')
    @include('partials.slider')

    <section class="post-page" id="basic-waypoint">

        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="wrapper-breadcrumbs">
                        <nav class="breadcrumb">
                            <a class="breadcrumb-item" href="{{ url('/') }}">Головна</a>
                        </nav>
                    </div>

                    <div class="wrapper-single-post-content">
                        <h2>Альбоми</h2>

                        <div class="wrapper-album">
                            <div class="row">

                                @foreach($galleries as $gallery)
                                    <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-xs-12 albom_item_img">
                                        <div class="gallery-item">
                                            <a href="{{ action('WelcomeController@album', $gallery->id) }}">
                                                <img class="image" src="{{ asset('storage/' . $gallery->image) }}"
                                                     alt="gallery">
                                            </a>

                                            <div class="middle"></div>

                                            <div class="wrapper-gallery-item-date">
                                                <p class="gallery-item-date">
                                                    {{ Carbon\Carbon::parse($gallery->created_at)->format('m.d.Y') }}
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach

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