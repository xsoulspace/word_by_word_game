package dev.xsoulspace.yandex_ads_sdk

import com.yandex.mobile.ads.common.MobileAds
import com.yandex.mobile.ads.instream.MobileInstreamAds
import dev.xsoulspace.yandex_ads_sdk.view.YandexAdsBannerNativeViewFactory
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.BinaryMessenger

class YandexAdsApiImpl : YandexAdsApiInterface.YandexAdsApi {
	private lateinit var flutterBinding: FlutterPlugin.FlutterPluginBinding
	val emitter = YandexAdEventHandlerImpl()

	fun onAttached(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
		YandexAdsApiInterface.YandexAdsApi.setup(
			flutterPluginBinding.binaryMessenger,
			this
		)
		flutterBinding = flutterPluginBinding
		flutterBinding.platformViewRegistry
			.registerViewFactory(
				"yandex-ads-banner-view",
				YandexAdsBannerNativeViewFactory(this)
			)
		emitter.onAttached(flutterPluginBinding)
	}

	fun onDetached(binaryMessenger: BinaryMessenger) {
		YandexAdsApiInterface.YandexAdsApi.setup(binaryMessenger, null)
		emitter.onDetached(binaryMessenger)
	}

	override fun onLoad(result: YandexAdsApiInterface.Result<Void>?) {
		MobileInstreamAds.setAdGroupPreloading(
			INSTREAM_AD_GROUP_PRELOADING_ENABLED
		)
		MobileAds.initialize(flutterBinding.applicationContext) {
			//            log("SDK initialized")
		}

	}


	private companion object {
		private const val INSTREAM_AD_GROUP_PRELOADING_ENABLED = true
	}
}

