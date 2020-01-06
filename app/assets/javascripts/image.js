  $(document).on("change", "#item_images_attributes_0_image", function () {
  var html = `<input type="file" name="item[images_attributes][0][image]" id="item_images_attributes_0_image">`
    $('.field_image').append(html);
    $('#item_images_attributes_0_image').prop("disabled", true);
  }); 
