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

# マイグレーションの状態を確認
docker compose exec web rails db:migrate:status

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

#### ActiveRecord でレコードを作成

Rails コンソールで直接レコードを作成する方法：

```bash
# Rails コンソールを起動
make console
```

```ruby
# 方法1: new + save
post = Post.new(title: "Title 1", body: "Body 1")
post.save

# 方法2: create（new + save を一度に実行）
post = Post.create(title: "Title 1", body: "Body 1")

# 方法3: create!（バリデーションエラー時に例外を投げる）
post = Post.create!(title: "Title 1", body: "Body 1")

# レコードの取得
Post.all          # 全レコード取得
Post.first        # 最初のレコード
Post.last         # 最後のレコード
Post.find(1)      # ID で検索
Post.find_by(title: "Title 1")  # 条件で検索
Post.all.order(id: :desc) # ID降順で表示
Post.all.limit(2) # 上位2件のみ

# レコードの更新
post = Post.first
post.update(title: "New Title")

# レコードの削除
post = Post.first
post.destroy
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

### routes の確認

```bash
# postsのroutesを表示（postsのところを変更する）
docker compose exec web rails routes -c posts
```

## アプリケーションへのアクセス

アプリケーションは以下の URL で動作します: http://localhost:3000

## データベース接続情報

- **ホスト**: localhost
- **ポート**: 5432
- **ユーザー名**: postgres
- **パスワード**: password
- **データベース名**: tohhiro_on_rails_development
