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
                        <h2>Анонси</h2>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-xl-12">

                    <div class="row">

                        @foreach($posts as $post)
                            @include('partials.one-anounse')
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
                    <div class="col-md-12">
                        <nav class="news_navigation" aria-label="Page navigation">
                            <ul class="pagination">
                                <li class="add_info add_info_news"><a href="{{ url('/anounses') }}">Всі анонси</a></li>
                            </ul>
                        </nav>
                    </div>
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
            loop: true,
            margin: 10,
            items: 1
        });
    </script>
@endsection