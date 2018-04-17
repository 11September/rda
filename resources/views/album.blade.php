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
                            <a class="breadcrumb-item" href="{{ url('/') }}">Головна</a>
                        </nav>
                    </div>

                    <div class="wrapper-single-post-content">
                        <h2>Альбом</h2>



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