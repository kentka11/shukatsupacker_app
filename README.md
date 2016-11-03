# README

#READMEの書き方
下記参考
http://codechord.com/2012/01/readme-markdown/

#管理者権限(ユーザ情報)
user_name: admin
user_email: kentka1122@gmail.com
user_pass: admin0

#postgresqlコマンド一覧
https://www.postgresql.jp/document/8.4/html/index.html

#️DB一覧表示
\l;
#DB接続
\connect db_name;
\c データベース名
#テーブル一覧表示
\dt;
#テーブル選択
\d テーブル名;
#userにパスワードの設定user
\password username
--Enter new password:
--Enter it again:

#今回調査で分かったこと
postgresqlへの接続はssh接続で行われているためセキュリティの設定を行う必要がない
各ユーザアカウントにはPassword設定がされている状態になっている


#rails
#railsセットアップ系
■C9でRuby on Railsのアプリケーションを起動するには
・起動する → コマンドが入力できない状態になる
$ rails server -b 0.0.0.0 -p 8080
※ WEBrickというRubyで作られたwebサーバーが内部的に起動
 
・停止する → コマンドが入力できる状態になる
Ctrl + C


C9のrailsコマンド参考
<<https://blog.codecamp.jp/rails_cloud9>>

#Railsのモデル検索あれこれ
<<http://qiita.com/tono0123/items/576a4a4659b51860f304>>
#columnの追加
rails generate migration add_remember_digest_to_[テーブル名] [column名]:[データ型]



#ルーティングの設定
`rake routes`を実行しルートを確認
rake routesは実行のたびにRails環境を読み込むので、
そのままでは遅い、以下のような方法で高速化

*pryとpry-rails gemがインストールされているなら、rails consoleを起動しておいて show-routesを実行
*spring gemがインストールされているならspring rake routesとすれば2度目以降から高速になる
*dev環境が起動中ならhttp://localhost:3000/rails/infoを参照する (Rails 4)

#css設置場所
パス：app/assets/stylesheets

#上記のパスに設置すればパスの指定はする必要なし
/*************************************************
cssを読み込むには
ビューファイルに下記を記述
<%= stylesheet_link_tag "test", :media => "all" %>
スタイルシートがtest.cssというファイル名の場合、
testとだけ指定すれば良い。ファイル名の.cssは省く。
*************************************************/

production環境では、CSSの更新を反映させるためにプリコンパイルをする。
これを忘れると、CSSファイルを更新したのに、新しいCSSが反映されないという問題が起こる.
`rake assets:precompile`
`rake assets:precompile:all`

プリコンパイルについては下記のサイト参考
<<http://qiita.com/ryounagaoka/items/8cbe76f2fb7a3157f07c>>

#スマホ、PCのcss切り替え
html(head内に下記を記述)
`<meta name="viewport" content="width=device-width,user-scalable=yes,maximum-scale=2" />`
１ meta name="viewport" → 「表示領域の設定をするよー」ということ。
２ content="width=device-width" → 「表示領域の幅」を「デバイスのサイズに合わせるよー」ということ。
３ content="user-scalable=yes" → 「ズームの操作」を「許可する」（初期値は「許可する」。許可しない場合は「no」）
４ content="maximum-scale=2" → 「最大倍率」は「2」（0～10の範囲、初期値は1.6）

#Ruby->言語理解を深めるメモ

### render & redirect_toの違い
redirect_toはアクション(controller)を経由してビューを出力するのに対して、
renderはアクションを経由せずそのままビューを出力する。
renderを使う時はそのrender先のビューで使う変数は
そのrenderのメソッド内で定義しなければならない。


検索機能の作り方
http://qiita.com/budougumi0617/items/d98fc15adea4dab438e7



SERVER START
--postgresql server
sudo service postgresql start
--starting application server
rails s -b $IP -p $PORT

--to update the project to repository
 git status
 git add -A
 git commit -m "Finish toy app"
 git push
 
 --deploy
 git push heroku
 
 
 git push conoha(#ConoHaへの登録機能) 
 https://www.conoha.jp/wp-content/uploads/2014/09/05_Git.pdf
 
 ドメイン名の登録を行う為のコマンド
 heroku
 http://www.ownway.info/Ruby/heroku/how/management/application/web/custom_domains
 http://qiita.com/icb54615/items/76acf2a1ea151535c5dc
 
 
 
 
in your heroku project directory