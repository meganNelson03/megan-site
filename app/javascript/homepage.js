$(document).ready(function () {

    $(".skills-slider").slick({
        infinite: true,
        autoplay: false,
        autoplaySpeed: 5000,
        speed: 500,
        slidesToShow: 3,
        slidesToScroll: 1,
        arrows: true,
        prevArrow:"<div class='prev'><span></span></div>",
        nextArrow:"<div class='next'><span></span></div>",
        adaptiveHeight: false,
        dots: false,
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

    $(".slidey").slick("refresh");
})

  