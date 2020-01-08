$(document).on('turbolinks:load',function(){

  $('.file_field1').on('change', function(e){
    var file = e.target.files[0];
    var reader = new FileReader();
    reader.onload = (function(e){
      $(".image_box1").append($("<img  class = photo_img >").attr("src", e.target.result));
    })
  reader.readAsDataURL(file);
  })

  $('.file_field2').on('change', function(e){
    var file = e.target.files[0];
    var reader = new FileReader();
    reader.onload = (function(e){
      $(".image_box2").append($("<img  class = photo_img >").attr("src", e.target.result));
  })
  reader.readAsDataURL(file);
  })

  $('.file_field3').on('change', function(e){
    var file = e.target.files[0];
    var reader = new FileReader();
    reader.onload = (function(e){
      $(".image_box3").append($("<img  class = photo_img >").attr("src", e.target.result));
  })
  reader.readAsDataURL(file);
  })

  $('.file_field4').on('change', function(e){
    var file = e.target.files[0];
    var reader = new FileReader();
    reader.onload = (function(e){
      $(".image_box4").append($("<img  class = photo_img >").attr("src", e.target.result));
  })
  reader.readAsDataURL(file);
  })


  $('.file_field5').on('change', function(e){
    var file = e.target.files[0];
    var reader = new FileReader();
    reader.onload = (function(e){
      $(".image_box5").append($("<img  class = photo_img >").attr("src", e.target.result));
  })
  reader.readAsDataURL(file);
  })

  $('.file_field6').on('change', function(e){
    var file = e.target.files[0];
    var reader = new FileReader();
    reader.onload = (function(e){
      $(".image_box6").append($("<img  class = photo_img >").attr("src", e.target.result));
  })
  reader.readAsDataURL(file);
  })

  $('.add_image').on('change', function(e){
    var file = e.target.files[0];
    var reader = new FileReader();
    reader.onload = (function(e){
      $(".preview").append($("<img  class = photo_img >").attr("src", e.target.result));
  })
  reader.readAsDataURL(file);
  })

  $('.remove_btn1').on('click', function(){
    $('#image1').val('');
    $('.image_box1').html('');
  })

  $('.remove_btn2').on('click', function(){
    $('#image2').val('');
    $('.image_box2').html('');
  })

  $('.remove_btn3').on('click', function(){
    $('#image3').val('');
    $('.image_box3').html('');
  })

  $('.remove_btn4').on('click', function(){
    $('#image4').val('');
    $('.image_box4').html('');
  })

  $('.remove_btn5').on('click', function(){
    $('#image4').val('');
    $('.image_box5').html('');
  })

  $('.remove_btn6').on('click', function(){
    $('#image4').val('');
    $('.image_box6').html('');
  })

})  