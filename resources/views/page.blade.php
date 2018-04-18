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
                            <a class="breadcrumb-item" href="{{ url('/') }}">Головна /</a>
                            <a class="breadcrumb-item" href="#">{{ $page->title }}</a>
                        </nav>
                    </div>
                    <div class="wrapper-single-post-content">
                        <h2>Страница</h2>

                        <div class="wrapper-page">
                            {!! $page->body !!}
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

    @include('partials.links')
@endsection

@section('scripts')
    <script type="text/javascript" src="{{ asset('js/jquery.fancybox.min.js') }}"></script>

    <script src="{{ asset('js/owl.carousel.min.js') }}"></script>
    <script>
        $('.big-slider-body').owlCarousel({
            loop: true,
            margin: 10,
            items: 1
        });
    </script>
@endsection