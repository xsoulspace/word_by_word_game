clean:
	fvm flutter clean
get:
	fvm flutter pub get && fvm dart run melos bootstrap 
gen:
	fvm dart run build_runner build
gen-rewrite:
	fvm dart run build_runner build --delete-conflicting-outputs

build-web-pwa:
	fvm flutter build web --csp --dart-define-from-file=configs/prod.json --dart-define=STORE=xsoulspaceWebsite -t lib/main_prod.dart --pwa-strategy=offline-first && rm -rf release/web && mv build/web release
build-google-play:
	fvm flutter build appbundle --dart-define-from-file=configs/prod.json --dart-define=STORE=googlePlay -t lib/main_prod.dart
build-rustore:
	fvm flutter build apk --dart-define-from-file=configs/prod.json --dart-define=STORE=rustore -t lib/main_prod.dart
build-crazy-games:
	fvm flutter build web --csp --dart-define-from-file=configs/prod.json --dart-define=STORE=crazyGames -t lib/main_prod.dart  --dart-define=IS_LINKS_ALLOWED=false
build-yandex-games:
	fvm flutter build web --csp --dart-define-from-file=configs/prod.json --dart-define=STORE=yandexGames -t lib/main_prod.dart  --dart-define=IS_LINKS_ALLOWED=false

# pass 
# as argument: make v="3.19." run
# or be defined as environment: wid="" wis="" v="3.19." make run build-snap
deploy-snap:		
	snapcraft upload --release=edge word-by-word_$(v)_arm64.snap


gen-icons:
	fvm dart run flutter_launcher_icons
