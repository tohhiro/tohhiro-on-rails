FROM ruby:3.3.4

# システムパッケージのインストールとキャッシュクリーンアップ
RUN apt-get update -qq && \
    apt-get install -y build-essential && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# 作業ディレクトリの設定
WORKDIR /app

# Gemfileのコピーとbundle install
COPY Gemfile Gemfile.lock ./
RUN bundle install

# アプリケーションコードのコピー
COPY . .

# デフォルトコマンド(bashを起動してコンテナを維持)
CMD ["bash"]
