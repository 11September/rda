<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>RDA</title>
    <link rel="SHORTCUT ICON" href="images/logo_tab.png" type="image/jpg">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/style.css">
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
</head>
<body>

<header class="header-wrapper">

    <div class="header-top">
        <div class="container">
            <div class="top-part-body">
                <div class="logo-part">
                    <img src="{{ asset('images/header_logo.png') }}" alt="">

                    <div class="text-block">
                        <p>Відділ освіти</p>
                        <p>Сумської Районної Державної<br>Адміністрації</p>
                    </div>
                </div>

                <div class="language-part">
                    <a href="">УКР</a>
                    <a href="">РУС</a>
                    <a href="">ENG</a>
                </div>

                <div class="social-part">
                    <a href=""><i class="fab fa-facebook-f"></i></a>
                    <a href=""><i class="fab fa-twitter"></i></a>
                    <a href=""><i class="fab fa-youtube"></i></a>
                    <a href=""><i class="fas fa-rss"></i></a>
                </div>

                <form class="search-part">
                    <input type="text" placeholder="Пошук сайтом...">
                    <i class="fas fa-search"></i>
                </form>
            </div>
        </div>
    </div>

    <div class="header-bottom">
        <div class="container">
            <nav class="menu-body">
                <i class="fas fa-bars mobile-btn"></i>
                <ul class="menu-list hider">
                    <li><a href="" class="menu-list-item">ГОЛОВНА</a></li>
                    <li><a href="{{ url('/news') }}" class="menu-list-item">НОВИНИ</a></li>
                    <li><a href="" class="menu-list-item">ПУБЛІЧНА ІНФОРМАЦІЯ</a></li>
                    <li><a href="" class="menu-list-item">ЗВЕРНЕННЯ ГРОМАДЯН</a></li>
                    <li><a href="" class="menu-list-item">ДОШКІЛЬНА ОСВІТА</a></li>
                    <li><a href="" class="menu-list-item">ЗАГАЛЬНА СЕРЕДНЯ ОСВІТА</a></li>
                    <li><a href="" class="menu-list-item">ПОЗАШКІЛЬНА ОСВІТА</a></li>
                </ul>
            </nav>
        </div>
    </div>
</header>

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
                        <div class="row">
                            <div class="wrapper-news-item">
                                <div class="row">
                                    <div class="col-md-4"></div>
                                    <div class="col-md-8"></div>
                                </div>

                                <div class="wrapper-news-item-bottom">
                                    <div class="row">
                                        <div class="col-md-6"></div>
                                        <div class="col-md-6"></div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="wrapper-news-item">
                                <div class="row">
                                    <div class="col-md-4"></div>
                                    <div class="col-md-8"></div>
                                </div>

                                <div class="wrapper-news-item-bottom">
                                    <div class="row">
                                        <div class="col-md-6"></div>
                                        <div class="col-md-6"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">

                    <h2>ПОСЛУГИ</h2>

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
            <div class="col-xl-8">
                <div class="news_item">
                    <div class="row">
                        <div class="col-xl-4 news_item_img">
                            <img src="{{ asset('images/news_item_1.png') }}" alt="news_item_img">
                        </div>
                        <div class="col-xl-8 news_item_text">
                            <h3>Подія дня, чи цієї години. Заголовок набраний висотою 20пт. Шрифт без засічок у
                                начертанні BOLD</h3>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                                exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat...
                            </p>
                        </div>
                        <div class="news_item_link_padding">
                            <div class="col-xl-12 news_item_link">
                                <div class="row">
                                    <div class="col-xl-6 news_item_link_left">
                                        <div class="calendar">
                                            <i class="fas fa-calendar-alt"></i>
                                            <p class="">14.03.2018</p>
                                        </div>
                                        <div class="last_news">
                                            <i class="fas fa-folder-open"></i>
                                            <p class="">ОСТАННІ НОВИНИ</p>
                                        </div>


                                    </div>
                                    <div class="col-xl-6 news_item_link_right">
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
                        <div class="col-xl-4 news_item_img">
                            <img src="{{ asset('images/news_item_1.png') }}" alt="news_item_img">
                        </div>
                        <div class="col-xl-8 news_item_text">
                            <h3>Подія дня, чи цієї години. Заголовок набраний висотою 20пт. Шрифт без засічок у
                                начертанні BOLD</h3>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                                exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat...
                            </p>
                        </div>
                        <div class="news_item_link_padding">
                            <div class="col-xl-12 news_item_link">
                                <div class="row">
                                    <div class="col-xl-6 news_item_link_left">
                                        <div class="calendar">
                                            <i class="fas fa-calendar-alt"></i>
                                            <p class="">14.03.2018</p>
                                        </div>
                                        <div class="last_news">
                                            <i class="fas fa-folder-open"></i>
                                            <p class="">ОСТАННІ НОВИНИ</p>
                                        </div>


                                    </div>
                                    <div class="col-xl-6 news_item_link_right">
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
            <div class="col-xl-4">

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

<footer class="footer">
    <div class="footer-top">
        <div class="container">
            <div class="row wrapper-footer-top-content">
                <div class="col-lg-4 col-md-4 col-sm-5 center-block">
                    <div class="wrapper-footer-logo">
                        <img src="{{ asset('images/footer_logo.png') }}" alt="footer-logo">
                        <div class="logo-info">
                            <h4>Відділ освіти </h4>
                            <h5>Сумської Районної Державної <br>
                                Адміністрації
                            </h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 col-sm-3 center-block text-center">
                    <div class="wrapper-footer-languages">
                        <ul class="footer-languages-menu list-inline">
                            <li class="list-inline-item footer-languages-menu-item"><a href="#">УКР</a></li>
                            <li class="list-inline-item footer-languages-menu-item"><a href="#">РУС</a></li>
                            <li class="list-inline-item footer-languages-menu-item"><a href="#">ENG</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-4 center-block text-center">
                    <div class="wrapper-footer-social">
                        <a class="footer-social-item" href="#"><i class="fab fa-facebook-f"></i></a>
                        <a class="footer-social-item" href="#"><i class="fab fa-twitter"></i></a>
                        <a class="footer-social-item" href="#"><i class="fab fa-youtube"></i></a>
                        <a class="footer-social-item" href="#"><i class="fas fa-rss"></i></a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-12 col-sm-12 center-block">
                    <div class="wrapper-footer-additional">
                        <ul class="footer-additional-menu">
                            <li class="footer-additional-menu-item"><a href="#"><i class="fas fa-users"></i>Звернення
                                    громадян</a></li>
                            <li class="footer-additional-menu-item"><a href="#"><i class="fas fa-sitemap"></i>Мапа сайту</a>
                            </li>
                            <li class="footer-additional-menu-item"><a href="#"><i class="fas fa-envelope"></i>Контактна
                                    інформація</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="container">
            <div class="row wrapper-footer-bottom">
                <div class="col-md-12">
                    <p class="copyright">Разработано <a href="#"><span class="red">LocalService</span></a></p>
                </div>
            </div>
        </div>
    </div>
</footer>



</body>
</html>