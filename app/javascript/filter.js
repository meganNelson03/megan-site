$(document).ready(function () {

    $('body').on('change', '.filters input:not([name="toggle_all"])', function() {
        update_projects();
        update_filters();
    });

    $('body').on('change', '.filters input[name="toggle_all"]', function() {
        update_projects();
        toggle_all();
    });

});

function toggle_all() {
    var form_data   = $('#filter-form').serialize();

    $.ajax({
        data:    form_data,
        type:    'POST',
      	url:     "/projects/toggle_all",
        async:   true,
      	success: function(response) {
            $("#filters").html(response.filters_partial);

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
        }
    });
}

function update_projects() {
    var form_data   = $('#filter-form').serialize();

    $.ajax({
        data:    form_data,
        type:    'POST',
      	url:     "/projects",
        async:   true,
        dataType: 'script',
        success: function(response) {

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
        }
    });
}

function update_filters() {
    var form_data   = $('#filter-form').serialize();

    $.ajax({
        data:    form_data,
        type:    'POST',
      	url:     "/projects/update_filters",
          async:   true,
      	success: function(response) {
            $("#filters").html(response.filters_partial);

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
        }
    });
}
