
# 放映商品管理アプリケーション
### アプリURL  http://18.177.102.50/

##制作背景
##工夫したところ
##特徴
・テスト
・サービス機能関連
・DB設計

# usersテーブル
|Column|Type|Options|
|------|----|-------|
|username|string|null: false, index: ture|
|e-mail|string|null: false|
|password|string|null: false|

### Association
- has_many :groups,through: :groups_users
- has_many :group_users
- has_many :items


# genreテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|


### Associtaion
- has_many :users,through: :genre_items
- has_many :genre_items
- has_many :items

# itemsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false,foreign_key: true|
|genre_id|references|null: false,foreign_key: true|
|name|string|
|price|integer|
|budget|integer|

### Association
- belongs_to :genre
- belongs_to :user