
$(document).on('turbolinks:load', function() {
  if (window.location.pathname.includes('concerts')) {
    width = $(window).width() / 2
    $('.concerts__years-slider-mobile-container').animate({
        scrollLeft: $('.concerts__year-link.active').offset().left - (width / 2)
    }, 'slow');
  }
});
