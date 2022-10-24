package dev.xsoulspace.yandex_ads_sdk.view

import android.content.Context
import dev.xsoulspace.yandex_ads_sdk.YandexAdsApiImpl
import io.flutter.plugin.common.StandardMessageCodec
import io.flutter.plugin.platform.PlatformView
import io.flutter.plugin.platform.PlatformViewFactory

class YandexAdsBannerNativeViewFactory(
	private val yandexApi: YandexAdsApiImpl,
) : PlatformViewFactory(StandardMessageCodec.INSTANCE) {

	override fun create(context: Context, viewId: Int, args: Any?): PlatformView {
		if (args !is Map<*, *>) throw Error()
		val adUnitId = args["adUnitId"] as String

		return YandexAdsBannerNativeView(
			context = context,
			adUnitId = adUnitId,
			yandexApi = yandexApi,
		)
	}
}