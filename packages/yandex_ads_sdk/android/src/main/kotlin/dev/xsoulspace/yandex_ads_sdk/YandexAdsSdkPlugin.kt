package dev.xsoulspace.yandex_ads_sdk

import androidx.annotation.NonNull

import io.flutter.embedding.engine.plugins.FlutterPlugin

/** YandexAdsSdkPlugin */
class YandexAdsSdkPlugin: FlutterPlugin, YandexAdsApi {
  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    YandexAdsApi.setup(flutterPluginBinding.binaryMessenger, this)
  }

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    YandexAdsApi.setup(binding.binaryMessenger, null)
  }
}
