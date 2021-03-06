
# 放映商品管理アプリケーション
### [アプリはこちら](http://dinostv.com)

## アプリ概要
### 放映商品の詳細情報を閲覧できるアーカイブアプリケーションです

- 未ログインの場合<br>
商品一覧や詳細の閲覧などはログインせずに使用できますが<br>
未ログインの場合にご使用頂けない機能もございますので、ご注意ください！

- Basic認証用（セキュリティ上、アプリを開いた時に求められます）
  - アカウント：kotajbwz
  - パスワード：19418773

- テストユーザアカウント（ログインして機能を確かめたいときはこちらをご利用下さい）
  - メールアドレス：test@gmail.com
  - パスワード： testacconut


## 制作背景

- 非効率な商品管理方法<br>
前職にて、放映商品の管理業務を行なっていました。<br>
管理方法としては、放映予定の映像をDVDで確認し<br>
紙媒体での商品詳細と照らし合わせていくという非効率なものであったと言えます

- 放送事故に繋がる危険性<br>
全国放送の情報番組にて商品を取り扱うため、
弊社限定品や、番組最安値など、という文言は常に気を配らなければなりませんが
担当者が不在であったり、変わったりしてしまい、過去の情報が分からないなど
完全に漏れがないと自信を持てる管理体制とは言えませんでした

- 必要な情報をアーカイブ化<br>
商品情報が必要な人であれば誰でも見ることができる
アーカイブのようなプラットフォームを作れば、一つの商品であっても、時系列や担当者毎に
情報を追うことができるのではないかと思い制作致しました


## 工夫したところ
- 画像や動画は、担当者が間に合わないこともあるので、なくてもnil用の画像を表示する設定にしたこと
- Validationのエラーメッセージを各項目で表示させるようにしたこと
- 画像投稿の際のプレビューをjsで見れるようにしたこと
- コメントをjsを用いて非同期で追加していくようにしたこと


## 特徴
- 商品詳細を、放映日や、担当者、画像、放映内容（動画）など細かく保存できる
- 担当者毎のページを作成し、内線番号や連絡先、担当者の商品なども個別で確認できる
- 美容・ファッション・リビングなど、商品をカテゴリ別でも見えるようにした

## サービス機能関連
- ユーザ新規登録、編集、ユーザマイページの閲覧、ユーザ商品の検索
- 商品登録、編集、削除、商品詳細（画像、動画）閲覧
- 商品検索、担当者別、カテゴリ別、全体
- 商品毎のコメント投稿、コメント削除<br/>
  - 画像複数投稿・コメント機能は元同僚からのFBを受けて追加しました

## テスト
- ItemモデルとUserモデルの単体テスト
- ItemコントローラとRegisrationコントローラの単体テスト

## 使用言語
- マークアップ
  - HTML,CSS,javascript,jQuery
- サーバサイド
  - Ruby, Ruby on Rails
- インフラ
  - AWS (EC2,S3,IAM,Route53)


## DB設計

### usersテーブル
|Column|Type|Options|
|------|----|-------|
|username|string|null: false, index: ture|
|e-mail|string|null: false|
|password|string|null: false|
|image|string|
|department|integer|
|introduction|text|
|contact|string|
|post|string|
|number|integer|
|start_day|datetime|

#### Association
- has_many :items


### itemsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false,foreign_key: true|
|name|string|null, false|
|price|integer|null, false|
|budget|integer|null, false|
|color|text|null, false|
|on_air|datetime|null, false|
|category|integer|null, false|
|discription|text|
|video|string|

#### Association
- belongs_to :user
- has_many :comments
- has_many :images, dependent: :destroy
- accepts_nested_attributes_for :images, allow_destroy: true


### imagesテーブル

|Column|Type|Options|
|------|----|-------|
|item_id|references|null: false,foreign_key: true|
|image|string|

#### Association
- belongs_to :item, optional: true


### commentsテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|
|item_id|integer|
|comment|text|

#### Association
-  belongs_to :user 
-  belongs_to :item 










