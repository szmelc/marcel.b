// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

//= require jquery
//= require bootstrap-sprockets
//= require jquery.slick
//= require lightbox

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("jquery")
require("plugins/slick.min")
require("plugins/lightbox.min")
require("components/concerts-years-slider")
require("components/hamburger-menu")
require("components/project-photos-carousel")



// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
