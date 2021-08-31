# README

## もよりる

- このアプリケーションは「もよりる」というものです。

## Setup

```
  # このリポジトリをローカルに取り込む
  git clone https://github.com/kazuya002ex/server_moyoriru.git

  # dockerのセットアップ方法

  # コンテナをbuildする
  docker-compose build

  # コンテナを起動
  docker-compose up -d

  # DBを作成する
  docker-compose run web rails db:create db:migrate
```

- DBに変更があった場合

```
  # 現在のDBを削除し、DBを再構築する
  docker-compose run web rails db:migrate:reset

  # 開発データを投入する
  docker-compose run web rails db:seed

  # Gemfileの変更を取り込む
  docker-compose build
```

## サーバアクセス

- サーバのデフォルト値

http://localhost:3002


## RSpecの実行

```
docker-compose run web rspec

# dockerコンテナ内で実行
docker-compose run web --rm web bash
rspec
```

## 概要

- Ruby 2.7.2
- Rails 6.1.4
- MySQL 8.0.23 for Linux on x86_64
