$(document).on('turbolinks:load', function() {
  $('.projects__project-photos-container').slick({
    infinite: true,
    slidesToShow: 1,
    slidesToScroll: 1,
    dots: true,
    prevArrow: false,
    nextArrow: false
  });
})
