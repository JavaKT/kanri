$(document).on('turbolinks:load',function() {
  $('#item_images_attributes_0_image').on("change", function() { 
    var form = $(this).closest('form'); 
    form.append(`input type="file" name="item[images_attributes][0][image]" id="item_images_attributes_0_image"`); 
  }); 
})