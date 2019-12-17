json.array! @items do |item| 
  json.id       item.id
  json.user_id  item.user_id
  json.name     item.name
  json.nickname item.user.nickname
  json.on_air   item.on_air.strftime("%Y年 %m月 %d日")
  json.image    item.image

end