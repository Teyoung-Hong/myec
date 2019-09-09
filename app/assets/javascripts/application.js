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
//= require jquery
//= require cocoon
//= require turbolinks
//= require_tree .

$(document).ready(function(){
  // Admin function
  // Add GENRE
  $(document).on('ajax:success', '#form__genre', function(e){
    console.log(e);
    $('.input__genre').val('');
    $('.inner__index').append('<p class="genre">' + e.detail[0] + '</p>')
  })

  // show contact_reply
  $('.btn__reply').click(function(){
    $('.reply__wrapper').css('display', 'block');
  })


  // User function
  // add comment
  $(document).on('ajax:success', '#form__comment', function(e){
    console.log(e);
    $('.input__comment').val('');
    $('.inner__comment').append('<p class="comment">' + e.detail[0].comment + '</p>')
  })

  // show tab shift
  $('.user__tab').click(function(){
    var index = $('.user__tab').index(this);
    $('.user__content').removeClass('is_active');
    $('.user__content').css('display','none');
    $('.user__content').eq(index).addClass('is_active');
    $('.user__tab').removeClass('is_selected');
    $(this).addClass('is_selected');
  });

})
