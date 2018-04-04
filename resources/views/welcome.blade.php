@extends('layouts.master')

@section('css')
    <link rel="stylesheet" href="{{ asset('css/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/owl.theme.default.min.css') }}">
    <link rel="icon" type="image/png" sizes="32x32" href="{{ asset('images/favicon-32x32.png') }}">
@endsection

@section('content')
    <section class="big-slider">
        <div class="big-slider-body owl-carousel  owl-theme">
            <div><img src="{{ asset('images/slide.png') }}"></div>
            <div><img src="{{ asset('images/slide.png') }}"></div>
            <div><img src="{{ asset('images/slide.png') }}"></div>
            <div><img src="{{ asset('images/slide.png') }}"></div>
            <div><img src="{{ asset('images/slide.png') }}"></div>
            <div><img src="{{ asset('images/slide.png') }}"></div>
        </div>
    </section>
<section class="content">
    <div class="wrapper-main-news-services">
        <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <h3></h3>

                        <div class="wrapper-main-news">

                        </div>

                    </div>

                    <div class="col-md-4">
                        <h3></h3>

                        <div class="wrapper-sidebar-services">

                        </div>

                    </div>

                </div>
            </div>
        </div>

        <div class="wrapper-news-anonses">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <h2>ПОДІЇ</h2>
                        <div class="wrapper-news">
                            <div class="news-img">
                                <img src="images/events_head.png" alt="">

                                <div class="info-flex">
                                    <p class="abstract">Головна подія дня, чи тижня. Заголовок набраний висотою 20пт.
                                        Шрифт без засічок у начертанні BOLD</p>
                                    <p class="main-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                        Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                                        ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit
                                        esse cillum dolore eu fugiat nulla pariatur. Excepteur sint und...</p>
                                </div>

                                <div class="news_item_link_padding">
                                    <div class="col-xl-12 col-lg-12 col-md-12 news_item_link">
                                        <div class="row">
                                            <div class="col-xl-6 col-lg-7 col-md-7 col-sm-12 news_item_link_left">
                                                <div class="calendar">
                                                    <i class="fas fa-calendar-alt"></i>
                                                    <p class="">14.03.2018</p>
                                                </div>
                                                <div class="last_news">
                                                    <i class="fas fa-folder-open"></i>
                                                    <p class="">Головна подія</p>
                                                </div>


                                            </div>
                                            <div class="col-xl-6 col-lg-5 col-md-5 col-sm-12 news_item_link_right">
                                                <a href="#">
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
                            <div class="wrapper-services-list">

                                <div class="wrapper-services-list-item">
                                    <div class="services-list-item">

                                        <div class="services-list-item-picture">
                                            <img src="{{ asset('images/services_item_1.png') }}" alt="services">
                                        </div>
                                        <div class="services-list-item-content">
                                            <a href="#">
                                                <p class="services-list-item-text">Адміністративні послуги</p>
                                            </a>
                                        </div>

                                    </div>
                                </div>

                                <div class="wrapper-services-list-item">
                                    <div class="services-list-item">
                                        <div class="services-list-item-picture">
                                            <img src="{{ asset('images/services_item_2.png') }}" alt="services">
                                        </div>
                                        <div class="services-list-item-content">
                                            <a href="#">
                                                <p class="services-list-item-text">Портал Державних послуг</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>

                                <div class="wrapper-services-list-item">
                                    <div class="services-list-item">
                                        <div class="services-list-item-picture">
                                            <img src="{{ asset('images/services_item_3.png') }}" alt="services">
                                        </div>
                                        <div class="services-list-item-content">
                                            <a href="#">
                                                <p class="services-list-item-text">Система електронних зверненнь</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>

                                <div class="wrapper-services-list-item">
                                    <div class="services-list-item">
                                        <div class="services-list-item-picture">
                                            <img src="{{ asset('images/services_item_4.png') }}" alt="services">
                                        </div>
                                        <div class="services-list-item-content">
                                            <a href="#">
                                                <p class="services-list-item-text">Підписатись на новини</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>

                                <div class="wrapper-services-list-item">
                                    <div class="services-list-item services-last-item">
                                        <div class="services-list-item-picture">
                                            <img src="{{ asset('images/services_item_5.png') }}" alt="services">
                                        </div>
                                        <div class="services-list-item-content">
                                            <a href="#">
                                                <p class="services-list-item-text">План-календар заходів</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>

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
                    <div class="news_item">
                        <div class="row">
                            <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 col-xs-6 news_item_img">
                                <img src="{{ asset('images/news_item_1.png') }}" alt="news_item_img">
                            </div>
                            <div class="col-xl-8 col-lg-8 col-md-8 col-sm-6 col-xs-6  news_item_text">
                                <h3>Подія дня, чи цієї години. Заголовок набраний висотою 20пт. Шрифт без засічок у начертанні BOLD</h3>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat...
                                </p>
                            </div>
                            <div class="col-sm-12 news_item_text news_item_text_hiden">
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat...
                                </p>
                            </div>
                            <div class="news_item_link_padding">
                                <div class="col-xl-12 col-lg-12 col-md-12 news_item_link">
                                    <div class="row">
                                        <div class="col-xl-6 col-lg-7 col-md-7 col-sm-12 news_item_link_left">
                                            <div class="calendar">
                                                <i class="fas fa-calendar-alt"></i>
                                                <p class="">14.03.2018</p>
                                            </div>
                                            <div class="last_news">
                                                <i class="fas fa-folder-open"></i>
                                                <p class="">ОСТАННІ НОВИНИ</p>
                                            </div>


                                        </div>
                                        <div class="col-xl-6 col-lg-5 col-md-5 col-sm-12 news_item_link_right">
                                            <a href="#">
                                                <span>Докладніше...</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="news_item">
                        <div class="row">
                            <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 news_item_img">
                                <img src="{{ asset('images/news_item_2.png') }}" alt="news_item_img">
                            </div>
                            <div class="col-xl-8 col-lg-8 col-md-8 col-sm-6 news_item_text">
                                <h3>Подія дня, чи цієї години. Заголовок набраний висотою 20пт. Шрифт без засічок у начертанні BOLD</h3>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat...
                                </p>
                            </div>
                            <div class="col-sm-12 news_item_text news_item_text_hiden">
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat...
                                </p>
                            </div>
                            <div class="news_item_link_padding">
                                <div class="col-xl-12 col-lg-12 col-md-12 news_item_link">
                                    <div class="row">
                                        <div class="col-xl-6 col-lg-7 col-md-7 col-sm-12 news_item_link_left">
                                            <div class="calendar">
                                                <i class="fas fa-calendar-alt"></i>
                                                <p class="">14.03.2018</p>
                                            </div>
                                            <div class="last_news">
                                                <i class="fas fa-folder-open"></i>
                                                <p class="">ОСТАННІ НОВИНИ</p>
                                            </div>


                                        </div>
                                        <div class="col-xl-6 col-lg-5 col-md-5 col-sm-12 news_item_link_right">
                                            <a href="#">
                                                <span>Докладніше...</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="news_item">
                        <div class="row">
                            <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 news_item_img">
                                <img src="{{ asset('images/news_item_3.png') }}" alt="news_item_img">
                            </div>
                            <div class="col-xl-8 col-lg-8 col-md-8 col-sm-6 news_item_text">
                                <h3>Подія дня, чи цієї години. Заголовок набраний висотою 20пт. Шрифт без засічок у начертанні BOLD</h3>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat...
                                </p>
                            </div>
                            <div class="col-sm-12 news_item_text news_item_text_hiden">
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat...
                                </p>
                            </div>
                            <div class="news_item_link_padding">
                                <div class="col-xl-12 col-lg-12 col-md-12  news_item_link">
                                    <div class="row">
                                        <div class="col-xl-6 col-lg-7 col-sm-12 news_item_link_left">
                                            <div class="calendar">
                                                <i class="fas fa-calendar-alt"></i>
                                                <p class="">14.03.2018</p>
                                            </div>
                                            <div class="last_news">
                                                <i class="fas fa-folder-open"></i>
                                                <p class="">ОСТАННІ НОВИНИ</p>
                                            </div>


                                        </div>
                                        <div class="col-xl-6 col-lg-5 col-sm-12 news_item_link_right">
                                            <a href="#">
                                                <span>Докладніше...</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <nav class="news_navigation" aria-label="Page navigation">
                        <ul class="pagination">
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link page-link-active" href="#">3</a></li>
                            <li class="page-item add_info"><a class="page-link" href="#">>></a></li>
                            <li class="page-item add_info add_info_news"><a class="page-link" href="#">Всі новини</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-xl-4 col-lg-4 news_right_block">
                    <h2>АНОНСИ ПОДІЙ</h2>
                    <p>
                        Lorem ipsum dolor sit amet
                        Сonsectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                    </p>
                    <p>
                        Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                    </p>
                    <p>
                        Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                    </p>
                    <p>
                        Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                    </p>
                    <p>
                        Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.
                    </p>
                    <p>
                        Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                    </p>
                    <p>
                        Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                    </p>
                    <p>
                        Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                    </p>
                    <p>
                        Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                    </p>
                </div>
            </div>
        </div>
    </section>

    <section class="gallery">
        <div class="container">
            <div class="row">
                <div class="col-md-8">

                    <h2>ГАЛЕРЕЯ</h2>

                    <div class="wrapper-gallery">
                        <div class="row">
                            <div class="col-md-6 col-sm-6">
                                <div class="gallery-item">
                                    <img src="{{ asset('images/gallery_item_1.png') }}" alt="gallery">

                                    <div class="wrapper-gallery-item-date">
                                        <p class="gallery-item-date">
                                            14.03.2018
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="gallery-item">
                                    <img src="{{ asset('images/gallery_item_2.png') }}" alt="gallery">

                                    <div class="wrapper-gallery-item-date">
                                        <p class="gallery-item-date">
                                            14.03.2018
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="gallery-item">
                                    <img src="{{ asset('images/gallery_item_3.png') }}" alt="gallery">

                                    <div class="wrapper-gallery-item-date">
                                        <p class="gallery-item-date">
                                            14.03.2018
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="gallery-item">
                                    <img src="{{ asset('images/gallery_item_4.png') }}" alt="gallery">

                                    <div class="wrapper-gallery-item-date">
                                        <p class="gallery-item-date">
                                            14.03.2018
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">

                    <h2>BІДЕО</h2>

                    <div class="wrapper-gallery">
                        <div class="row">
                            <div class="col-md-12 col-sm-6">
                                <div class="video-item">
                                    <a href="#">
                                        <img src="{{ asset('images/video_poster.png') }}" alt="gallery">
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-12 col-sm-6">
                                <div class="video-item">
                                    <a href="#">
                                        <img src="{{ asset('images/video_poster.png') }}" alt="gallery">
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="wrapper-gallery-bottom">
                <div class="row">
                    <div class="col-md-8"></div>
                    <div class="col-md-4"></div>
                </div>
            </div>
        </div>
    </section>

    <section class="links">
        <div class="container">

            <h2>ПОСИЛАННЯ</h2>

            <div class="wrapper-links-content">
                <div class="row">
                    <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_1.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_2.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_3.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_4.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_5.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_6.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_7.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_8.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_9.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_10.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_11.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4">
                        <div class="wrapper-link-item">
                            <a href="#">
                                <img src="{{ asset('images/link_item_12.png') }}" alt="link">
                            </a>
                        </div>
                    </div>

                    <div class="col-xl-2 col-lg-3 col-md-3 col-sm-4">
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
