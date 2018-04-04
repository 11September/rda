$(document).ready(function() {
    $(".mobile-btn").click(function () {
        $(".menu-list").slideToggle();
        $(".menu-list").removeClass('hider');
    });

    $('.big-slider-body').owlCarousel({
        loop: true,
        margin: 10,
        items: 1
    });
});