$(document).ready(function () {


    $('body').bind("ajax:complete", "form", function(event, xhr, status) {
        $("form")[0].reset();
    })

    $(".skills-slider").slick({
        infinite: true,
        autoplay: true,
        autoplaySpeed: 5000,
        speed: 500,
        slidesToShow: 3,
        slidesToScroll: 1,
        arrows: true,
        prevArrow:"<div class='prev'><span></span></div>",
        nextArrow:"<div class='next'><span></span></div>",
        adaptiveHeight: false,
        dots: false,
        responsive: [
            {
                breakpoint: 991,
                settings: {
                    slidesToShow: 2,
                }
            },
            {
                breakpoint: 768,
                settings: {
                    slidesToShow: 2,
                    dots: true,
                    arrows: false,
                }
            },
            {
                breakpoint: 567,
                settings: {
                    slidesToShow: 1,
                    dots: true,
                }
            },
        ]
    });

    $(".projects-slider").slick({
        infinite: true,
        speed: 500,
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: true,
        prevArrow:"<div class='prev'><span></span></div>",
        nextArrow:"<div class='next'><span></span></div>",
        adaptiveHeight: false,
        dots: false,
    });

    $('body').on('submit', 'form', function() {
        $('button[type="submit"]').html('Submitting...')
        $('button[type="submit"]').prop('disabled', true)
    })

    $(".new_contact_request").bind("ajax:complete", function(event,xhr,status){
        $('input').val('');
      });

})

$(".projects-slider").slick({
    infinite: true,
    speed: 500,
    slidesToShow: 1,
    slidesToScroll: 1,
    arrows: true,
    prevArrow:"<div class='prev'><span></span></div>",
    nextArrow:"<div class='next'><span></span></div>",
    adaptiveHeight: false,
    dots: false,
    responsive: [
        {
            breakpoint: 991,
            settings: {
            arrows: false,
            dots: true,
            }
        }
    ]
});
