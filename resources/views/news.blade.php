@extends('layouts.master')

@section('css')
    <link rel="stylesheet" href="{{ asset('css/service.css') }}">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.css">
@endsection

@section('content')


    <section class="news-page">
        <div class="container">
            <h2>Новини</h2>
            <div class="row">
                <div class="col-xl-12 news_left_block">

                    <div class="row">
                        <div class="col-md-6">
                            <div class="post-item">
                                <div class="row">
                                    <div class="col-xl-6 news_item_img">
                                        <img src="{{ asset('images/news_item_1.png') }}" alt="news_item_img">
                                    </div>
                                    <div class="col-xl-6 post-item-description">
                                        <div class="row">
                                            <div class="col-md-12">

                                                <div class="post-item-calender">
                                                    <i class="fas fa-calendar-alt"></i>
                                                    <p class="post-item-calender-date">14.03.2018</p>
                                                </div>
                                            </div>
                                        </div>

                                        <h3>Подія дня, чи цієї години. Заголовок набраний висотою 20пт.</h3>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="wrapper-post-content">
                                            <p class="post-content">
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                                veniam,
                                                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                                consequat...
                                            </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="clearfix"></div>

                                <div class="post-item-bottom">
                                    <div class="row">
                                        <div class="col-md-7">
                                            <div class="wrapper-post-item-category">
                                                <i class="fas fa-folder-open"></i>
                                                <p class="post-item-category">ОСТАННІ НОВИНИ</p>

                                                <i class="fas fa-user"></i>
                                                <p class="post-item-user">Админ.</p>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <a class="post-item-more" href="#">
                                                <span>Докладніше...</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="post-item">
                                <div class="row">
                                    <div class="col-xl-6 news_item_img">
                                        <img src="{{ asset('images/news_item_1.png') }}" alt="news_item_img">
                                    </div>
                                    <div class="col-xl-6 post-item-description">
                                        <div class="row">
                                            <div class="col-md-12">

                                                <div class="post-item-calender">
                                                    <i class="fas fa-calendar-alt"></i>
                                                    <p class="post-item-calender-date">14.03.2018</p>
                                                </div>
                                            </div>
                                        </div>

                                        <h3>Подія дня, чи цієї години. Заголовок набраний висотою 20пт.</h3>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="wrapper-post-content">
                                            <p class="post-content">
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                                veniam,
                                                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                                consequat...
                                            </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="clearfix"></div>

                                <div class="post-item-bottom">
                                    <div class="row">
                                        <div class="col-md-7">
                                            <div class="wrapper-post-item-category">
                                                <i class="fas fa-folder-open"></i>
                                                <p class="post-item-category">ОСТАННІ НОВИНИ</p>

                                                <i class="fas fa-user"></i>
                                                <p class="post-item-user">Админ.</p>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <a class="post-item-more" href="#">
                                                <span>Докладніше...</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="post-item">
                                <div class="row">
                                    <div class="col-xl-6 news_item_img">
                                        <img src="{{ asset('images/news_item_1.png') }}" alt="news_item_img">
                                    </div>
                                    <div class="col-xl-6 post-item-description">
                                        <div class="row">
                                            <div class="col-md-12">

                                                <div class="post-item-calender">
                                                    <i class="fas fa-calendar-alt"></i>
                                                    <p class="post-item-calender-date">14.03.2018</p>
                                                </div>
                                            </div>
                                        </div>

                                        <h3>Подія дня, чи цієї години. Заголовок набраний висотою 20пт.</h3>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="wrapper-post-content">
                                            <p class="post-content">
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                                veniam,
                                                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                                consequat...
                                            </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="clearfix"></div>

                                <div class="post-item-bottom">
                                    <div class="row">
                                        <div class="col-md-7">
                                            <div class="wrapper-post-item-category">
                                                <i class="fas fa-folder-open"></i>
                                                <p class="post-item-category">ОСТАННІ НОВИНИ</p>

                                                <i class="fas fa-user"></i>
                                                <p class="post-item-user">Админ.</p>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <a class="post-item-more" href="#">
                                                <span>Докладніше...</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="post-item">
                                <div class="row">
                                    <div class="col-xl-6 news_item_img">
                                        <img src="{{ asset('images/news_item_1.png') }}" alt="news_item_img">
                                    </div>
                                    <div class="col-xl-6 post-item-description">
                                        <div class="row">
                                            <div class="col-md-12">

                                                <div class="post-item-calender">
                                                    <i class="fas fa-calendar-alt"></i>
                                                    <p class="post-item-calender-date">14.03.2018</p>
                                                </div>
                                            </div>
                                        </div>

                                        <h3>Подія дня, чи цієї години. Заголовок набраний висотою 20пт.</h3>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="wrapper-post-content">
                                            <p class="post-content">
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                                veniam,
                                                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                                consequat...
                                            </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="clearfix"></div>

                                <div class="post-item-bottom">
                                    <div class="row">
                                        <div class="col-md-7">
                                            <div class="wrapper-post-item-category">
                                                <i class="fas fa-folder-open"></i>
                                                <p class="post-item-category">ОСТАННІ НОВИНИ</p>

                                                <i class="fas fa-user"></i>
                                                <p class="post-item-user">Админ.</p>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <a class="post-item-more" href="#">
                                                <span>Докладніше...</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="post-item">
                                <div class="row">
                                    <div class="col-xl-6 news_item_img">
                                        <img src="{{ asset('images/news_item_1.png') }}" alt="news_item_img">
                                    </div>
                                    <div class="col-xl-6 post-item-description">
                                        <div class="row">
                                            <div class="col-md-12">

                                                <div class="post-item-calender">
                                                    <i class="fas fa-calendar-alt"></i>
                                                    <p class="post-item-calender-date">14.03.2018</p>
                                                </div>
                                            </div>
                                        </div>

                                        <h3>Подія дня, чи цієї години. Заголовок набраний висотою 20пт.</h3>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="wrapper-post-content">
                                            <p class="post-content">
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                                veniam,
                                                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                                consequat...
                                            </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="clearfix"></div>

                                <div class="post-item-bottom">
                                    <div class="row">
                                        <div class="col-md-7">
                                            <div class="wrapper-post-item-category">
                                                <i class="fas fa-folder-open"></i>
                                                <p class="post-item-category">ОСТАННІ НОВИНИ</p>

                                                <i class="fas fa-user"></i>
                                                <p class="post-item-user">Админ.</p>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <a class="post-item-more" href="#">
                                                <span>Докладніше...</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="post-item">
                                <div class="row">
                                    <div class="col-xl-6 news_item_img">
                                        <img src="{{ asset('images/news_item_1.png') }}" alt="news_item_img">
                                    </div>
                                    <div class="col-xl-6 post-item-description">
                                        <div class="row">
                                            <div class="col-md-12">

                                                <div class="post-item-calender">
                                                    <i class="fas fa-calendar-alt"></i>
                                                    <p class="post-item-calender-date">14.03.2018</p>
                                                </div>
                                            </div>
                                        </div>

                                        <h3>Подія дня, чи цієї години. Заголовок набраний висотою 20пт.</h3>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="wrapper-post-content">
                                            <p class="post-content">
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                                veniam,
                                                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                                consequat...
                                            </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="clearfix"></div>

                                <div class="post-item-bottom">
                                    <div class="row">
                                        <div class="col-md-7">
                                            <div class="wrapper-post-item-category">
                                                <i class="fas fa-folder-open"></i>
                                                <p class="post-item-category">ОСТАННІ НОВИНИ</p>

                                                <i class="fas fa-user"></i>
                                                <p class="post-item-user">Админ.</p>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <a class="post-item-more" href="#">
                                                <span>Докладніше...</span>
                                            </a>
                                        </div>
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
                        <li class="page-item"><a class="page-link" href="#">4</a></li>
                        <li class="page-item"><a class="page-link" href="#">5</a></li>
                        <li class="page-item"><a class="page-link" href="#">6</a></li>
                        <li class="page-item"><a class="page-link" href="#">7</a></li>
                        <li class="page-item"><a class="page-link" href="#">8</a></li>
                        <li class="page-item"><a class="page-link" href="#">9</a></li>
                        <li class="page-item add_info"><a class="page-link" href="#">>></a></li>
                        <li class="page-item add_info add_info_news"><a class="page-link" href="#">Всі новини</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        </div>
    </section>
@endsection

@section('scripts')

@endsection