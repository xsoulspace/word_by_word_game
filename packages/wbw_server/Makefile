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
	
run-prod: 
	pm2 start "dart bin/main.dart" --name "wbw-dart-server"
stop-prod:
	pm2 stop "wbw-dart-server"
run-prod-docker:
	docker build -t wbw-dart-server . && docker run -it wbw-dart-server
kill-prod-docker:
	docker rmi wbw-dart-server

# https://stackoverflow.com/questions/72194127/how-to-run-dart-server-on-background
# https://pm2.keymetrics.io/docs/usage/process-management/
# pm2 start ecosystem.config.js