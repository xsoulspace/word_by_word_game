clean:
	fvm flutter clean
get:
	fvm flutter pub get && fvm dart run melos bootstrap 
gen:
	fvm dart run build_runner build --enable-experiment=inline-class
gen-rewrite:
	fvm dart run build_runner build --delete-conflicting-outputs --enable-experiment=inline-class

build-google-play:
	fvm flutter build appbundle --enable-experiment=inline-class --dart-define-from-file=configs/prod.json --dart-define=STORE=googlePlay -t lib/main_prod.dart
build-rustore:
	fvm flutter build apk --enable-experiment=inline-class --dart-define-from-file=configs/prod.json --dart-define=STORE=rustore -t lib/main_prod.dart
build-web-pwa:
	fvm flutter build web --enable-experiment=inline-class --csp --dart-define-from-file=configs/web_prod.json --dart-define=STORE=xsoulspaceWebsite -t lib/main_prod.dart --pwa-strategy=offline-first && rm -rf release/web && mv build/web release
build-crazy-games:
	fvm flutter build web --enable-experiment=inline-class --csp --dart-define-from-file=configs/web_prod.json --dart-define=STORE=crazyGames -t lib/main_prod.dart
build-yandex-games:
	fvm flutter build web --enable-experiment=inline-class --csp --dart-define-from-file=configs/web_prod.json --dart-define=STORE=yandexGames -t lib/main_prod.dart

# pass 
# as argument: make v="3.19." run
# or be defined as environment: wid="" wis="" v="3.19." make run build-snap
deploy-snap:		
	snapcraft upload --release=edge word-by-word_$(v)_arm64.snap


gen-icons:
	fvm dart run flutter_launcher_icons
