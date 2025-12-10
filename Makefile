.PHONY: rubocop rubocop-fix rubocop-file rubocop-file-fix ruby irb bash

# RuboCop - コードチェック
rubocop:
	docker compose exec ruby bundle exec rubocop

# RuboCop - 自動修正
rubocop-fix:
	docker compose exec ruby bundle exec rubocop -a

# RuboCop - 特定ファイルのチェック (使い方: make rubocop-file FILE=main.rb)
rubocop-file:
	docker compose exec ruby bundle exec rubocop $(FILE)

# RuboCop - 特定ファイルの自動修正 (使い方: make rubocop-file-fix FILE=main.rb)
rubocop-file-fix:
	docker compose exec ruby bundle exec rubocop -a $(FILE)

# Rubyファイルを実行 (使い方: make ruby FILE=main.rb)
ruby:
	docker compose exec ruby ruby $(FILE)

# IRB起動
irb:
	docker compose exec ruby irb

# Bashシェル起動
bash:
	docker compose exec ruby bash
