// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require rails-ujs
//= require activestorage
//= require_tree
//= require jquery
//= require jquery_ujs

$(function() {
  $('.slider').slick({
    dots: true,
    dotsClass: 'slick-dots',
    cenrterMode: true,
    centerPadding: 0,
    adaptiveheight: true,
    prevArrow: '<img src="images/carousel-prev.png" class="slideArrow prev">',
    nextArrow: '<img src="images/carousel-next.png" class="slideArrow2 next">',
    autoplay: true,
    autoplaySpeed: 3000,
  });
});

$(function() {
  $('.cp_cssslider').slick({
    cenrterMode: true,
    centerPadding: 0,
    adaptiveheight: true,
    arrows: false,
    asNavFor: '.image-dots'
  });
  $('.image-dots').slick({
    asNavFor: '.cp_cssslider',
    slidesToShow: 4,
    focusOnSelect: true
  });
  $( '.image-dots' ).on( 'mouseenter', 'li', function() {
    $( this ).click();
  } );
  $( '.image-dots' ).on( 'click', 'li', function(e) {
    e.preventDefault();
  } );
});