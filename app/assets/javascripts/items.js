$(document).on('turbolinks:load',function() {

  $(".body").on("mouseover",".body__box__regisration",function(){
  $(this).css
  ({"background-color": "#F1940B",
    "font-weight": "bold"});
  })

.on("mouseout",".body__box__regisration", function(){
  $(this).css({
    "background-color": "", 
    "font-weight": "normal"});
  })
  .on("mouseover",".body__box__show",function(){
    $(this).css
    ({"background-color": "#F1940B",
      "font-weight": "bold"});
    })
  
  .on("mouseout",".body__box__show", function(){
    $(this).css({ 
      "background-color": "",
      "font-weight": "normal"});
    })
});