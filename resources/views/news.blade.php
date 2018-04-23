@extends('layouts.master')

@section('css')
    <link rel="stylesheet" href="{{ asset('css/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/owl.theme.default.min.css') }}">
@endsection

@section('content')
    @include('partials.slider')

    <section class="news-page" id="basic-waypoint">

        <div class="wrapper-news-heading">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h2>Новини</h2>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-xl-12">

                    <div class="row">

                        @foreach($posts as $post)
                            @include('partials.one-post')
                        @endforeach

                    </div>
                </div>
            </div>
        </div>

        <div class="wrapper-pagination">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">

                        @include('partials.pagination')

                    </div>
                </div>

                <div class="row">
                    <p class="view-more-wrapper-button">
                        <a class="view-more-button" href="{{ url('/anounses') }}">Всі новини</a>
                    </p>
                </div>
            </div>
        </div>
    </section>


    @include('partials.links')
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