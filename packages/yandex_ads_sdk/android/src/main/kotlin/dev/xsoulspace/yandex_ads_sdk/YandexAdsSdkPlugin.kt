package dev.xsoulspace.yandex_ads_sdk

import io.flutter.embedding.engine.plugins.FlutterPlugin

/** YandexAdsSdkPlugin */
class YandexAdsSdkPlugin : FlutterPlugin {
	private val api = YandexAdsApiImpl();
	override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
		api.onAttached(flutterPluginBinding)
	}

	override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
		api.onDetached(binding.binaryMessenger)
	}
}
