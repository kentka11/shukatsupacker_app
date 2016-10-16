# README

#READMEの書き方
下記参考
http://codechord.com/2012/01/readme-markdown/

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

＃スマホ、PCのcss切り替え
html(head内に下記を記述)
`<meta name="viewport" content="width=device-width,user-scalable=yes,maximum-scale=2" />`
１ meta name="viewport" → 「表示領域の設定をするよー」ということ。
２ content="width=device-width" → 「表示領域の幅」を「デバイスのサイズに合わせるよー」ということ。
３ content="user-scalable=yes" → 「ズームの操作」を「許可する」（初期値は「許可する」。許可しない場合は「no」）
４ content="maximum-scale=2" → 「最大倍率」は「2」（0～10の範囲、初期値は1.6）

課題
DBデータの取り出し方（異なるscaffoldから）
UI作成

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
 
 