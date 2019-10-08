$(document).on('turbolinks:load', function() {
  $('.mobile-nav__burger-wrapper').on('click', function() {
    $('.mobile-nav__hamburger-menu').toggleClass('animate');
    $('.mobile-nav__slider').toggleClass('active');
    $('.overlay').fadeToggle(200)
  })
})
