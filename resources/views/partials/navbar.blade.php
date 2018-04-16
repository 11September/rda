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
                    </form>
                    <li><a href="{{ url('/') }}" class="menu-list-item">ГОЛОВНА</a></li>
                    <li><a href="{{ url('/news') }}" class="menu-list-item">НОВИНИ</a></li>
                    <li><div class="dropdown menu-list-item">
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                ВІДДІЛ ОСВІТИ
                            </button>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" href="#">
                                    Керівництво
                                    <div class="dropdown-item-line"></div>
                                </a>
                                <a class="dropdown-item" href="#">
                                    Структура
                                    <div class="dropdown-item-line"></div>
                                </a>
                                <a class="dropdown-item" href="#">
                                    Положення про відділ освіти
                                    <div class="dropdown-item-line"></div>
                                </a>
                                <a class="dropdown-item" href="#">
                                    Перелік послуг
                                    <div class="dropdown-item-line"></div>
                                </a>
                                <a class="dropdown-item" href="#">
                                    План роботи
                                    <div class="dropdown-item-line"></div>
                                </a>
                                <a class="dropdown-item" href="#">
                                    Вакансії
                                    <div class="dropdown-item-line"></div>
                                </a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="dropdown menu-list-item">
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                РУБРИКИ
                            </button>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" href="#">
                                    Колегії
                                    <div class="dropdown-item-line"></div>
                                </a>
                                <a class="dropdown-item" href="#">
                                    Наради
                                    <div class="dropdown-item-line"></div>
                                </a>
                                <a class="dropdown-item" href="#">
                                    Олімпіади, конкурси
                                    <div class="dropdown-item-line"></div>
                                </a>
                                <a class="dropdown-item" href="#">
                                    НУШ
                                    <div class="dropdown-item-line"></div>
                                </a>
                                <a class="dropdown-item" href="#">
                                    ДПА
                                    <div class="dropdown-item-line"></div>
                                </a>
                                <a class="dropdown-item" href="#">
                                    ЗНО
                                    <div class="dropdown-item-line"></div>
                                </a>
                                <a class="dropdown-item" href="#">
                                    БЖД
                                    <div class="dropdown-item-line"></div>
                                </a>
                                <a class="dropdown-item" href="#">
                                    Виховна робота
                                    <div class="dropdown-item-line"></div>
                                </a>
                                <a class="dropdown-item" href="#">
                                    Психологічна служба
                                    <div class="dropdown-item-line"></div>
                                </a>
                                <a class="dropdown-item" href="#">
                                    Спортивне життя
                                    <div class="dropdown-item-line"></div>
                                </a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="dropdown menu-list-item">
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                ДОШКІЛЬНА ОСВІТА
                            </button>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" href="#">
                                    Мережа закладів
                                    <div class="dropdown-item-line"></div>
                                </a>
                                <a class="dropdown-item" href="#">
                                    Методичні рекомендації щодо організації освітнього процесу
                                    <div class="dropdown-item-line"></div>
                                </a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="dropdown menu-list-item">
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                ЗАГАЛЬНА СЕРЕДНЯ ОСВІТА
                            </button>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" href="#">
                                    Мережа закладів
                                    <div class="dropdown-item-line"></div>
                                </a>
                                <a class="dropdown-item" href="#">
                                    Методичні рекомендації щодо організації освітнього процесу
                                    <div class="dropdown-item-line"></div>
                                </a>
                                <a class="dropdown-item" href="#">
                                    Опорні школи
                                    <div class="dropdown-item-line"></div>
                                </a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="dropdown menu-list-item">
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                ПОЗАШКІЛЬНА ОСВІТА
                            </button>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" href="#">
                                    Мережа закладів
                                    <div class="dropdown-item-line"></div>
                                </a>
                                <a class="dropdown-item" href="#">
                                    Методичні рекомендації щодо організації освітнього процесу
                                    <div class="dropdown-item-line"></div>
                                </a>
                            </div>
                        </div>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</header>

<div class="header-bottom" id="header-move">
    <div class="container">
        <nav class="menu-body">
            <ul class="menu-list hider">
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