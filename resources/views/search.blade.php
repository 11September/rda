@extends('layouts.master')

@section('css')
    <link rel="stylesheet" href="{{ asset('css/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/owl.theme.default.min.css') }}">
@endsection

@section('content')
    @include('partials.slider')

    <section class="search-wrapper-breadcrumbs" id="basic-waypoint">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="wrapper-breadcrumbs">
                        <nav class="breadcrumb">
                            <a class="breadcrumb-item" href="{{ url('/') }}">Головна</a>
                            <a class="breadcrumb-item" href="{{ url('/news') }}">Новини</a>
                            <span class="breadcrumb-item active">Пошук</span>
                        </nav>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="wrapper-search-result">
                        <p class="search-result">Результат пошуку за запитом:
                            <span>“ {{ $query }} ”</span>
                        </p>
                    </div>

                    <div class="wrapper-search-additional">

                        <p class="search-additional-count">
                            Знайдено матеріалів:
                            <span>{{ $posts->count() }}</span>
                        </p>

                        {{--<div class="news-page-panel">--}}
                            {{--<span class="sections">Розділи:</span>--}}

                            {{--<a href="#">останні новини</a>--}}
                            {{--<a class="news-page-panel-active" href="#">несортовані</a>--}}
                            {{--<a href="#">влада</a>--}}
                            {{--<a href="#">закон</a>--}}
                        {{--</div>--}}
                    </div>
                </div>
            </div>
        </div>
    </section>

    @include('partials.search-more')

    <section class="news-page">

        <div class="container">
            <div class="row">
                <div class="col-xl-12 news_left_block">
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
                    <div class="col-md-12">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination justify-content-center">
                                <li class="page-item add_info add_info_news">
                                    <a class="page-link" href="{{ url('/news') }}">Всі новини</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>

    </section>

    @include('partials.thubnails')

    @include('partials.search-more')

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