$(document).on('turbolinks:load',function(){

  $('.file_field1').on('change', function(e){
    var file = e.target.files[0];
    var reader = new FileReader();
    reader.onload = (function(e){
      $(".image_box1").append($("<img  class = photo_img > <h1 class = image1>画像①</h1>").attr("src", e.target.result));
    })
  reader.readAsDataURL(file);
  $('.file_field1').prop("disabled", true)
  $('#photo1').css({
    "color": "#fff",
  "cursor" : "no-drop"});
  })

  $('.file_field2').on('change', function(e){
    var file = e.target.files[0];
    var reader = new FileReader();
    reader.onload = (function(e){
      $(".image_box2").append($("<img  class = photo_img ><h1 class = image2>画像②</h1>").attr("src", e.target.result));
  })
  reader.readAsDataURL(file);
  $('.file_field2').prop("disabled", true)
  $('#photo2').css({
    "color": "#fff",
    "cursor" : "no-drop"});
  })



  $('.file_field3').on('change', function(e){
    var file = e.target.files[0];
    var reader = new FileReader();
    reader.onload = (function(e){
      $(".image_box3").append($("<img  class = photo_img ><h1 class = image3>画像③</h1>").attr("src", e.target.result));
  })
  reader.readAsDataURL(file);
  $('.file_field3').prop("disabled", true)
  $('#photo3').css({
    "color": "#fff",
    "cursor" : "no-drop"});
  })

  $('.file_field4').on('change', function(e){
    var file = e.target.files[0];
    var reader = new FileReader();
    reader.onload = (function(e){
      $(".image_box4").append($("<img  class = photo_img ><h1 class = image4>画像④</h1>").attr("src", e.target.result));
  })
  reader.readAsDataURL(file);
  $('.file_field4').prop("disabled", true)
  $('#photo4').css({
    "color": "#fff",
    "cursor" : "no-drop"});
  })


  $('.file_field5').on('change', function(e){
    var file = e.target.files[0];
    var reader = new FileReader();
    reader.onload = (function(e){
      $(".image_box5").append($("<img  class = photo_img ><h1 class = image5>画像⑤</h1>").attr("src", e.target.result));
  })
  reader.readAsDataURL(file);
  $('.file_field5').prop("disabled", true)
  $('#photo5').css({
    "color": "#fff",
    "cursor" : "no-drop"});
  })

  $('.file_field6').on('change', function(e){
    var file = e.target.files[0];
    var reader = new FileReader();
    reader.onload = (function(e){
      $(".image_box6").append($("<img  class = photo_img ><h1 class = image6>画像⑥</h1>").attr("src", e.target.result));
  })
  reader.readAsDataURL(file);
  $('.file_field6').prop("disabled", true)
  $('#photo6').css({
    "color": "#fff",
    "cursor" : "no-drop"});
  })

  $('.add_image').on('change', function(e){
    var file = e.target.files[0];
    var reader = new FileReader();
    reader.onload = (function(e){
      $(".preview").append($("<img  class = photo_img >").attr("src", e.target.result));
  })
  reader.readAsDataURL(file);
  })

  $(".item_register").click(function() {
    $('.file_field1').prop("disabled", false);
    $('.file_field2').prop("disabled", false);
    $('.file_field3').prop("disabled", false);
    $('.file_field4').prop("disabled", false);
    $('.file_field5').prop("disabled", false);
    $('.file_field6').prop("disabled", false);
 });

  $('.remove_btn1').on('click', function(){
    $('#image1').val('');
    $('.image_box1').html('');
    $('.file_field1').prop("disabled", false);
    $('#photo1').css({
      "color": "#253141",
    "cursor" : "copy"});
  })

  $('.remove_btn2').on('click', function(){
    $('#image2').val('');
    $('.image_box2').html('');
    $('.file_field2').prop("disabled", false);
  })

  $('.remove_btn3').on('click', function(){
    $('#image3').val('');
    $('.image_box3').html('');
    $('.file_field3').prop("disabled", false);
  })

  $('.remove_btn4').on('click', function(){
    $('#image4').val('');
    $('.image_box4').html('');
    $('.file_field4').prop("disabled", false);
  })

  $('.remove_btn5').on('click', function(){
    $('#image4').val('');
    $('.image_box5').html('');
    $('.file_field5').prop("disabled", false);
  })

  $('.remove_btn6').on('click', function(){
    $('#image4').val('');
    $('.image_box6').html('');
    $('.file_field6').prop("disabled", false);
  })

  $('.remove_btn').on('click', function(){
    $('.add_image').val('');
    $('.preview').html('');
    $('.add_image').prop("disabled", false);
  })

  $('.image_register').on('mouseenter',function(){
    fileCheck = $(".add_image").val().length;
      if(fileCheck == 0){
        $(".image_register").attr("disabled",true);
        alert("商品画像を選択して下さい")
      }else{
        $(".image_register").attr("disabled",false);
      }
  })
  $('.add_image').on('change', function(){
    $(".image_register").attr("disabled",false);
    $(".add_image").attr("disabled",true);

  })


})