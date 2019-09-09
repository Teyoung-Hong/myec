$(function(){
  $(document).on('ajax:succress', 'form', function(e){
    console.log(e);
    $('.input__genre').val('');
    $('.genres').prepend('<p class="genre">' + e.detail[0] + '</p>')
  })
})
