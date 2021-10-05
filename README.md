## 『Tamari-Ba』とは
- アプリ名: Tamari-Ba 

「たまりば」と読みます。バイク乗り達が自分のバイク、好きな道、きつかった道、楽しかった道の駅等を語り合う「たまり場」をイメージして作成。
いつも行くあのカフェ、あの道の駅等の集まってダベれる「たまり場」のように好きなスポットについて語り合えるようなアプリに仕上げました。

## 制作背景
友人とバイクでツーリングに行く際に、目的地までの道が重要なのだが道を紹介するサイトが少ない（もしくはバイク乗りなら誰でも知っているような内容しかなかった）という課題から、
道やスポットを紹介し、道やスポットについて交流するWEBアプリを作ろうと考えました。

## URL
- URL: https://rider-no-tamari-ba.com/
- ゲストログインボタンなら登録不要で簡単にログイン可能です。

![ゲストログイン](https://user-images.githubusercontent.com/69702983/130439157-051937c9-efc2-49b5-b941-7c73497365d0.png)

## 使用技術
- フロントエンド
  - HTML / CSS(Sass) 
  - Bootstrap 4.5

- バックエンド
  - Ruby 2.7.2
  - Ruby on Rails 6.1.3
  - JavaScript
  - GoogleMapsAPI (Maps JavaScript API, Geocoding API)

- インフラ
  - MySQL 5.7
  - Nginx 1.20
  - Puma 5.3.2
  - AWS (VPC, EC2, S3)
  - CircleCI
  - Docker 20.10.8
  - Supervisor

## 機能一覧

- ユーザー関連

||機能|
|---|---|
|1|アカウント登録/削除機能|
|2|ログイン/ログアウト機能|
|3|ゲストログイン機能|
|4|アカウント情報編集機能|
|5|ユーザー情報 - 都道府県|
|6|ユーザー一覧|

- 投稿機能

||機能|
|---|---|
|1|投稿機能(CRUD)|
|2|GoogleMaps表示機能|
|3|マップ検索機能|
|4|座標取得/保存機能|
|5|マーカー設置機能|
|6|コメント機能|
|7|いいね機能|
|8|投稿検索|
|9|投稿一覧|
|10|管理者権限(全投稿削除権限)|

## できること
### 1. トップページ
![Tamari-Ba-LP](https://user-images.githubusercontent.com/69702983/134466714-09b905aa-fd36-4600-9e81-b0c1b2fcd77c.gif)

- ログイン状態に応じて、リンクボタンを表示分けさせています。
  - 非ログイン状態：ログイン/ゲストログイン
  - ログイン状態：アプリトップ
- 最新３件分の投稿を表示
- 機能の概要を説明
- 投稿詳細イメージを表示

### 2. 新規投稿
![新規投稿](https://user-images.githubusercontent.com/69702983/132681648-9c113fa7-3cda-42d6-9241-c4b6be507fc3.gif)

- マップの検索でマップ表示範囲を移動できます。
- 任意の箇所をクリックすることでマーカーを設置できます。
- 座標がデータベースに保存されます。
- その他にも画像保存、タイトル、説明文を入力することが可能です。

### 3. 投稿一覧
![投稿一覧](https://user-images.githubusercontent.com/69702983/132880441-388e445b-0baf-4759-a4cf-7ed48643edb3.gif)

- 投稿一覧を見ることができます。
- 検索機能があるので、投稿を検索することができます。
- 9投稿でページネーションが適用されます。

### 4. 投稿詳細
![投稿詳細](https://user-images.githubusercontent.com/69702983/132227905-ffa6ec0f-22bc-43ae-9d0e-5d0f43424597.png)

- 保存された座標を元に地図上にマーカーを表示します。
- 投稿者本人がログインしている場合には編集/削除ボタンが表示され実行できます。
- 保存された画像が表示されます。
- コメント欄に入力して「コメントする」をクリックすることで、コメント可能です。


## 工夫したこと/苦労したこと
### 工夫したこと
工夫したことは主に3つあります。
- 新規投稿時に、マーカーを付けたい箇所を簡単に探せるようにマップ内の検索機能を実装
- Dockerでの環境構築やCircleCIを利用し、環境依存の解消やデプロイの自動化でデプロイ作業の効率化を実現
- ポートフォリオなのでアクセス負荷はないことを見込み、コスト削減のためRDSを使わずにEC2にMySQLを設置。万が一の負荷に起因するMySQL停止の500エラーに対応するため、swap領域を作り対応。

### 苦労したこと
苦労したことは主に以下の2つです。
- GoogleMapsAPIの実装。GoogleMapsの機能が多彩過ぎる分、自分が実装したい機能を実現するためには公式ドキュメントを読み込み、正しく理解する必要がありました。この公式ドキュメントを読み込む力は以下の実装にも活きています。
- Docker/CircleCI等のツール関連の学習です。AWS, CircleCI, Docker環境構築について1ヶ月未満でキャッチアップし実装しました。

### 作成記事
工夫した点や苦労した点については理解定着のためにQiita記事にまとめています。
- [【GoogleMapsAPI】Rails6アプリにMapsJavaScript APIとGeocoding APIを導入してみた](https://qiita.com/vit_udon_husqy/items/417cc10fd5c264546620)
- [【CircleCI】AWSにデプロイしたRails6アプリをCircleCIで自動デプロイ](https://qiita.com/vit_udon_husqy/items/46b48a4cd825a8e056cd)
- [【Amazon Linux2】【Rails】Nginxをpumaのunixドメインソケットでリバースプロキシする設定](https://qiita.com/vit_udon_husqy/items/8b488fd552a3a7a1ac64)
- [【Docker】Rails6/MySQLのコンテナを作って開発環境を構築](https://qiita.com/vit_udon_husqy/items/d5e97119fbe69607a5b8)
- [MySQLが起動失敗による500エラーの解消](https://qiita.com/vit_udon_husqy/items/7d8c81a539c8bcdfe9fc)

## ER図
![ポートフォリオER図](https://user-images.githubusercontent.com/69702983/130440332-86dde1df-99c4-4bcb-8550-358d5d629be6.png)

## インフラ構成図
![Tamari-Baインフラ構成図](https://user-images.githubusercontent.com/69702983/130326908-f732f5a6-2ed4-401f-b0f2-d1e63cc63347.png)

- ポートフォリオなので大きなアクセス負荷はかからないという見込みからコスト削減のためRDSは使わずに構築。
- [開発環境はこちら](https://github.com/Hiroto-Iizuka/Tamari-Ba/tree/master/docker/dev)