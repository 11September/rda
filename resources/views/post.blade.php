@extends('layouts.master')

@section('css')
    <link rel="stylesheet" href="{{ asset('css/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/owl.theme.default.min.css') }}">
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

    <section class="post-page">

        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="wrapper-breadcrumbs">
                        <nav class="breadcrumb">
                            <a class="breadcrumb-item" href="#">Головна</a>
                            <a class="breadcrumb-item" href="#">Новини</a>
                            <span class="breadcrumb-item active">Головна подія</span>
                        </nav>
                    </div>

                    <div class="wrapper-single-post-content">
                        <h2>ПОДІЇ</h2>

                        <div class="row">
                            <div class="col-md-12">
                                <img src="{{ asset('images/') }}" alt="">
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