clean:
	fvm flutter clean
get:
	fvm flutter pub get && fvm dart run melos bootstrap 
gen:
	fvm dart run build_runner build
gen-conflicting:
	fvm dart run build_runner build --delete-conflicting-outputs