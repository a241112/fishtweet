# Fishtweet
![Fishtweet](https://user-images.githubusercontent.com/70367662/103937886-c0ece300-516c-11eb-9649-1efc9ca6caf4.png)

# アプリケーション概要
簡単に投稿・閲覧できる釣果情報共有アプリ

# 目指した課題解決
自分が釣り初心者の頃に感じた、  
釣りたい魚がどこで釣れているのか？  
どんなエサを使っているのか？  
などの釣果情報を手軽に共有できることを目的としました。  
魚の名前や釣った場所で投稿を検索でき、いいねした投稿はマイページから確認できます。  
Googlemapを導入し、どこで釣れたかが一目で確認できるようにしました。  

# URL
http://18.181.124.111/

# テスト用アカウント
・テスト用アカウント等  
email: tarou@gmail.com  
password: 1234tarou  

# 実装機能
ユーザー機能  
・ログイン/ログアウト機能   

投稿機能  
・新規投稿  
・投稿の一覧表示（トップページ）  
・投稿の検索  
・投稿の詳細表示  
・投稿の編集  
・投稿の削除  

コメント機能  
・コメントの投稿（非同期）  
・コメントの削除  

いいね機能  
・投稿一覧表示ページからのいいね機能（非同期）  
・投稿詳細表示ぺージからのいいね機能（非同期）  

マイページ機能  
・ログインユーザーの投稿を一覧表示  
・ログインユーザーがいいねした投稿を一覧表示  

![スクリーンショット 2021-01-15 14 13 19](https://user-images.githubusercontent.com/70367662/104684235-edd86180-573b-11eb-92f8-b0602511bbba.png)  

![demo](https://gyazo.com/565035cd49ddca01d12e323698889153/raw)


# こだわりポイント
1.インフラにAWSを使用   
2.ロウグアウト状態でも投稿検索、投稿一覧、投稿詳細ページの閲覧が可能  
3.コメント、いいね機能の非同期対応  
4.自動デプロイ(Capistrano)  
5.GooglemapAPIを使用することで、釣れた場所をわかりやすく表示  

# 今後実装したい機能
・釣り場までのナビ機能  
・ユーザー情報の編集機能  
・CircleCIでCI/CDパイプラインの構築

# データベース設計
![Fishtweet_ER図](https://user-images.githubusercontent.com/70367662/103926872-dfe37900-515c-11eb-9a52-2e3497846a9c.png)


# 使用言語技術
バックエンド  
・Ruby2.6.5  
・Ruby on Rails 6.0.0  

フロントエンド  
・HTML  
・CSS  
・JavaScript  
・JQuery  

データベース  
・MySQL  

テスト  
・RSpec/factory_bot  

サーバー  
・AWS  
