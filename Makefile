clean:
	flutter clean

get:
	dart run melos bootstrap

gen:
	dart run build_runner build

gen-rewrite:
	dart run build_runner build --delete-conflicting-outputs

build-huawai:
	flutter build appbundle --dart-define-from-file=configs/prod.json --dart-define=STORE=huawaiStore -t lib/main_prod.dart

build-google-play:
	flutter build appbundle --dart-define-from-file=configs/prod.json --dart-define=STORE=googlePlay -t lib/main_prod.dart

build-rustore:
	flutter build apk --dart-define-from-file=configs/prod.json --dart-define=STORE=rustore -t lib/main_prod.dart

build-web-pwa:
	flutter build web --csp --dart-define-from-file=configs/web_prod.json --dart-define=STORE=xsoulspaceWebsite -t lib/main_prod.dart --pwa-strategy=offline-first && rm -rf release/web && mv build/web release

build-itch:
	flutter build web --csp --dart-define-from-file=configs/itch_prod.json --dart-define=STORE=itch -t lib/main_prod.dart --pwa-strategy=offline-first

build-vk-play:
	flutter build web --csp --dart-define-from-file=configs/web_prod.json --dart-define=STORE=vkPlay -t lib/main_prod.dart --pwa-strategy=offline-first

build-crazy-games:
	flutter build web --csp --dart-define-from-file=configs/web_prod.json --dart-define=STORE=crazyGames -t lib/main_prod.dart --pwa-strategy=offline-first

build-yandex-games:
	flutter build web --csp --dart-define-from-file=configs/web_prod.json --dart-define=STORE=yandexGames -t lib/main_prod.dart

upgrade-deps:
	flutter pub upgrade --major-versions && dart run upgrade_packages.dart

# pass 	
# as argument: make v="3.19." run
# or be defined as environment: wid="" wis="" v="3.19." make run build-snap

deploy-snap:
	snapcraft upload --release=edge word-by-word_$(v)_arm64.snap

gen-icons:
	fvm dart run flutter_launcher_icons
