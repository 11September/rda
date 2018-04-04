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

    var waypoint = new Waypoint({
        element: document.getElementById('basic-waypoint'),
        handler: function(direction) {
            if( direction === 'down') {
                $("#header-move").fadeIn( "slow" );
            }
            else if( direction === 'up'){
                $("#header-move").fadeOut("slow");
            }
        }
    });
});

