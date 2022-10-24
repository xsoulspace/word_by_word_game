package dev.xsoulspace.yandex_ads_sdk.view

import android.content.Context
import android.util.Log
import android.view.View
import com.yandex.mobile.ads.banner.AdSize
import com.yandex.mobile.ads.banner.BannerAdEventListener
import com.yandex.mobile.ads.banner.BannerAdView
import com.yandex.mobile.ads.common.AdRequest
import com.yandex.mobile.ads.common.AdRequestError
import com.yandex.mobile.ads.common.ImpressionData
import dev.xsoulspace.yandex_ads_sdk.YandexAdEventHandlerImpl
import dev.xsoulspace.yandex_ads_sdk.YandexAdsApiImpl
import io.flutter.plugin.platform.PlatformView

internal class YandexAdsBannerNativeView(
	context: Context,
	adUnitId: String,
	width: Int,
	height: Int,
	private val yandexApi: YandexAdsApiImpl,
) : PlatformView {
	private val apiEmitter: YandexAdEventHandlerImpl
		get() = yandexApi.emitter

	private val banner: BannerAdView
	private val bannerAdEventListener = BannerAdYandexAdsEventListener()
	override fun getView(): View {
		return banner
	}

	override fun dispose() {

	}

	init {
		banner = BannerAdView(context)
		banner.setAdSize(AdSize.flexibleSize(width, height))
		banner.setAdUnitId(adUnitId)
		banner.setBannerAdEventListener(bannerAdEventListener)
		val request: AdRequest = AdRequest.Builder().build()
		banner.loadAd(request)
	}

	private inner class BannerAdYandexAdsEventListener : BannerAdEventListener {

		override fun onAdLoaded() {
			apiEmitter.notifyOnAdLoaded()
		}

		override fun onAdFailedToLoad(adRequestError: AdRequestError) {
			apiEmitter.notifyOnAdFailedToLoad()
		}

		override fun onImpression(impressionData: ImpressionData?) {
			apiEmitter.notifyOnImpression()
		}

		override fun onAdClicked() {
			apiEmitter.notifyOnAdClicked()
		}

		override fun onLeftApplication() {
			apiEmitter.notifyOnLeftApplication()
		}

		override fun onReturnedToApplication() {
			apiEmitter.notifyOnReturnedToApplication()
		}
	}
}