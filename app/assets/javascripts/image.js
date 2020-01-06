$(document).on('turbolinks:load',function() {

  function imageHTML(){
    var html = `<input type="file" name="item[images_attributes][0][image]" id="item_images_attributes_0_image1">`
    return html;
  }

  function image1HTML(){
    var htmml = `<input type="file" name="item[images_attributes][0][image]" id="item_images_attributes_0_image2">`
    return htmml;
  }


  $('#item_images_attributes_0_image').on("change", function() { 
    var html = imageHTML()
    $('.field_image').append(html);
    $(this).val('');
  }); 

  $('#item_images_attributes_0_image1').on("change", function() { 
    console.log("繰り返す")

    var htmml = image1HTML()
    $('.field_image').append(htmml);
  }); 

})