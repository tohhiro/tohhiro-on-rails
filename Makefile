.PHONY: up down restart build logs console migrate test rubocop

up:
	docker compose up

down:
	docker compose down

restart:
	docker compose restart

build:
	docker compose build

logs:
	docker compose logs -f web

console:
	docker compose exec web rails console

migrate:
	docker compose exec web rails db:migrate

test:
	docker compose exec web rails test

rubocop:
	docker compose exec web rubocop
