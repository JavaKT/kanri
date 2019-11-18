$(document).on('turbolinks:load',function() {

  function appendItem(data){
    var html = `<div class="items__search__result__info">
                  <div class="items__search__result__info__image">
                  <p class="image">
                  <image src = "${data.image.thumb.url}" onerror = "this.src = '/uploads/noimage.png'", width="200" height="200">
                  </p>
                  </div>
                  <div class="items__search__result__info__text">
                    <p class="name">【担当者】${data.username}</p>
                    <p>【商品名】${data.name}</p>
                    <p>【放映日】${data.on_air}</p>
                    <a class="show" href="/items/${data.id}"><i class="fa fa-info-circle icon"></i>
                    </a>
                    <a href="/items/${data.id}">
                    </a></div>
                  </div>
                </div>`
    $(".items__search__result").append(html)

  }

  function NoResult(message){
    var html = `
              <li>${message}</li>`

    $(".items__search__result").append(html)
  }


  $("#keyword").on("keyup", function(e) {
    e.preventDefault();
    let target = $(this).val();

    $.ajax({
      type: 'GET',
      url: 'items/search',
      data: {keyword: target},
      dataType: 'json',
    })
    .done(function(items) {
      $(".items__search__result").empty();
      if (items.length !== 0) {
        items.forEach(function(item) { 
       appendItem(item)
        });
      } else {
        NoResult('該当する商品はありません')
      }
      })

   .fail(function() {
      })
    })
  })

