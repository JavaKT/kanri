json.text  @comment.text
json.user_id  @comment.user.id
json.user_name  @comment.user.username
json.time  @comment.created_at.strftime("%-m月%-d日 %-H時%-M分")
json.id @comment.id
json.item_id @comment.item_id