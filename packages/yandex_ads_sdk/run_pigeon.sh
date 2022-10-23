flutter pub run pigeon \
  --input pigeons/yandex_ads_api.dart \
  --dart_out lib/src/gen/yandex_ads_api.g.dart \
  --java_package "dev.xsoulspace.yandex_ads_sdk" \
  --java_out android/src/main/java/dev/xsoulspace/yandex_ads_sdk/YandexAdsApiInterface.java \
  --experimental_swift_out ios/Classes/YandexAdsApiInterface.swift
flutter pub run pigeon \
  --input pigeons/yandex_ad_event_handler.dart \
  --dart_out lib/src/gen/yandex_ad_event_handler.g.dart \
  --java_package "dev.xsoulspace.yandex_ads_sdk" \
  --java_out android/src/main/java/dev/xsoulspace/yandex_ads_sdk/YandexAdEventHandlerInterface.java \
  --experimental_swift_out ios/Classes/YandexAdEventHandlerInterface.swift