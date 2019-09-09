$(document).ready(function(){

  $('.user__tab').click(function(){
    var index = $('.user__tab').index(this);
    $('.user__content').removeClass('is_active');
    $('.user__content').eq(index).addClass('is_active');
    $('.user__tab').removeClass('is_selected');
    $(this).addClass('is_selected');
  }); 

});
