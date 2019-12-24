$(function(){
  function buildHTML(comment){
    var html = `<div class="comment_box">
                  <div class="comment_name">
                    <a class="none" href="/users/${comment.user_id}>${comment.user_name}</a>
                  </div>
                  <div class="comment_text">
                  ${comment.text}
                  </div>
                  <div class="comment_date">
                  ${comment.time}
                  </div>
                </div>`
    return html;
  }

  $('#new_comment').on('submit', function(e){
    e.preventDefault();
    var formData = new FormData(this);
    var url = $('#new_comment').attr('action')
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
  })
  .done(function(data){
    var html = buildHTML(data);
    $('.show__right_box__comments').append(html);
    $('.text_box').val('');
    $('.comment_submit').prop('disabled', false);
  })
  .fail(function(){
    alert('コメントが正しく送信されませんでした');
  })
})
})