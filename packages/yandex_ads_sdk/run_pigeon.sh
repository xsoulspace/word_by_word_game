flutter pub run pigeon \
  --input pigeons/yandex_ads_api.dart \
  --dart_out lib/src/gen/yandex_ads_api.g.dart \
  --java_package "dev.xsoulspace.yandex_ads_sdk" \ 
  --java_out android/src/main/java/dev/xsoulspace/yandex_ads_sdk/YandexAdsSdkPlugin.java \ 
  --experimental_swift_out ios/Classes/YandexAdsSdkPlugin.swift 
