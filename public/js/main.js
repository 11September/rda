$(document).ready(function() {
    $(".mobile-btn").click(function () {
        $(".menu-list").slideToggle();
        $(".menu-list").removeClass('hider');
    });

    $(".menu-list").on("click","a", function (event) {
        //отменяем стандартную обработку нажатия по ссылке
        event.preventDefault();

        //забираем идентификатор блока с атрибута href
        var id  = $(this).attr('href'),

            //узнаем высоту от начала страницы до блока на который ссылается якорь
            top = $(id).offset().top;
        //alert(id);

        //анимируем переход на расстояние - top за 1500 мс
        $('body,html').animate({scrollTop: top}, 1500);
    });

    $('.big-slider-body').owlCarousel({
        loop: true,
        margin: 10,
        items: 1
    });

});