# README

Docker コンテナで Ruby on Rails アプリケーションを実行します。

## 必要な環境

- Docker
- Docker Compose
- Make

## セットアップ

セットアップ完了済み！すぐに使えます。

## よく使うコマンド（Makefile）

### アプリケーション起動・停止

```bash
# アプリケーションを起動
make up
# 実行されるコマンド: docker compose up

# アプリケーションを停止
make down
# 実行されるコマンド: docker compose down

# コンテナを再起動
make restart
# 実行されるコマンド: docker compose restart

# コンテナを再ビルド
make build
# 実行されるコマンド: docker compose build
```

### 開発

```bash
# ログをリアルタイムで表示
make logs
# 実行されるコマンド: docker compose logs -f web

# Rails コンソール
make console
# 実行されるコマンド: docker compose exec web rails console

# マイグレーションを実行
make migrate
# 実行されるコマンド: docker compose exec web rails db:migrate

# テストを実行
make test
# 実行されるコマンド: docker compose exec web rails test

# RuboCop でコードチェック
make rubocop
# 実行されるコマンド: docker compose exec web rubocop
```

## 詳細な Docker コマンド

Makefile にないコマンドを実行する場合は、以下のように直接 Docker コマンドを使用してください。

### コンテナ管理

```bash
# 起動中のコンテナを表示
docker compose ps

# 全てのコンテナを表示（停止中も含む）
docker compose ps -a

# バックグラウンドで起動
docker compose up -d

# 停止してボリュームも削除
docker compose down -v

# 再ビルドして起動
docker compose up --build
```

### Rails コマンド

#### データベース操作

```bash
# データベースを作成
docker compose exec web rails db:create

# マイグレーションをロールバック
docker compose exec web rails db:rollback

# データベースをリセット
docker compose exec web rails db:reset

# シードデータを投入
docker compose exec web rails db:seed
```

#### ジェネレーターコマンド

```bash
# コントローラを生成
docker compose exec web rails generate controller ControllerName

# モデルを生成
docker compose exec web rails generate model ModelName

# スキャフォールドを生成
docker compose exec web rails generate scaffold ModelName field:type
```

#### テスト

```bash
# 特定のテストファイルを実行
docker compose exec web rails test test/models/user_test.rb
```

#### RuboCop

```bash
# 自動修正
docker compose exec web rubocop -A

# 特定のファイルをチェック
docker compose exec web rubocop app/models/user.rb
```

### Bundle コマンド

```bash
# Gem をインストール
docker compose exec web bundle install

# Gem を更新
docker compose exec web bundle update
```

### シェルアクセス

```bash
# コンテナのシェルにアクセス
docker compose exec web bash

# 一回限りのコマンドを実行
docker compose run --rm web bash
```

## アプリケーションへのアクセス

アプリケーションは以下の URL で動作します: http://localhost:3000

## データベース接続情報

- **ホスト**: localhost
- **ポート**: 5432
- **ユーザー名**: postgres
- **パスワード**: password
- **データベース名**: tohhiro_on_rails_development
