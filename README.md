# README

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

cssを読み込むには
ビューファイルに下記を記述
<%= stylesheet_link_tag "custom", :media => "all" %>
スタイルシートがtest.cssというファイル名の場合、
testとだけ指定すれば良い。ファイル名の.cssは省く。

production環境では、CSSの更新を反映させるためにプリコンパイルをする。
これを忘れると、CSSファイルを更新したのに、新しいCSSが反映されないという問題が起こる.
"rake assets:precompile"
"rake assets:precompile:all"

プリコンパイルについては下記のサイト参考
<<http://qiita.com/ryounagaoka/items/8cbe76f2fb7a3157f07c>>

