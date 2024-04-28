start:
	docker compose up --build --detach
run:
	dart bin/main.dart --apply-migrations
gen:
	serverpod generate
reset: ## reset the server
	rm -rf migrations
	serverpod generate
	serverpod create-migration
	docker compose down --volumes --remove-orphans
	docker compose up --build --detach
	dart run bin/main.dart --role maintenance --apply-migrations

reset-run:
	make reset
	make run