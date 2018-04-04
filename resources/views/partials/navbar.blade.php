<header class="header-wrapper">
    <div class="header-top">
        <div class="container">
            <div class="top-part-body">
                <div class="logo-part">
                    <a href="{{ url('/') }}">
                        <img src="{{ asset('images/header_logo.png') }}" alt="">
                    </a>

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

                <form action="{{ action('NewsController@search') }}" class="search-part">
                    {{ csrf_field() }}

                    <input type="text" placeholder="Пошук сайтом...">

                    <button type="submit">
                        <i class="fas fa-search"></i>
                    </button>
                </form>
            </div>
        </div>
    </div>

    <div class="header-bottom">
        <div class="container">
            <nav class="menu-body">
                <p class="mobile-btn"><i class="fas fa-bars"></i></p>

                <ul class="menu-list hider">
                    <form action="{{ action('NewsController@search') }}" class="search-part">
                        {{ csrf_field() }}

                        <input type="text" placeholder="Пошук сайтом...">
                        <button type="submit">
                            <i class="fas fa-search"></i>
                        </button>
                        {{--<i class="fas fa-search"></i>--}}
                    </form>


                    <li><a href="{{ url('/') }}" class="menu-list-item">ГОЛОВНА</a></li>
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