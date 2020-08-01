rails new <app_name> --api apiサーバーアプリの立ち上げ

よく使うコマンド例

```
rails g model post title:string
rails g controller posts
rails db:create
rake db:migrate
rake routes
rails c
```

postテーブルを作成しよう

```
$ rails g model post title:string
$ rails g controller posts
$ rails db:create
$ rake db:migrate
```

ルートには名前空間でバージョンを区切ると良い

rake routesでルーティングを確認
api_v1_posts 
GET    /api/v1/posts(.:format)     api/v1/posts#index
POST   /api/v1/posts(.:format)     api/v1/posts#create
api_v1_post 
GET    /api/v1/posts/:id(.:format) api/v1/posts#show
PATCH  /api/v1/posts/:id(.:format) api/v1/posts#update
PUT    /api/v1/posts/:id(.:format) api/v1/posts#update
DELETE /api/v1/posts/:id(.:format) api/v1/posts#destroy

コントローラの中身を外部からajaxリクエスト等で情報の作成・取得・削除・編集が可能になるよう設定

routeのnamespaceはcontrollerではmoduleとして対応する
そしてディレクトリ構造が正しくなかったら以下のようなエラーが出る

```
ActionController::RoutingError (uninitialized constant Api):
```

よし、じゃあusersを作ってpostと紐付けよう

慣習的にモデル名は先頭を大文字にするらしい

型一覧
```
string : 文字列
text : 長い文字列
integer : 整数
float : 浮動小数
decimal : 精度の高い小数
datetime : 日時
timestamp : タイムスタンプ
time : 時間
date : 日付
binary : バイナリデータ
boolean : Boolean
```

```
rails g model User email:string password:string
rails g controller users
```
