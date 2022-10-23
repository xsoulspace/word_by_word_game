package dev.xsoulspace.yandex_ads_sdk

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodChannel

class YandexAdEventHandlerImpl :
	YandexAdEventHandlerInterface.YandexAdEventHandler {
	private lateinit var flutterBinding: FlutterPlugin.FlutterPluginBinding
	private val channelName =
		"dev.flutter.pigeon.YandexAdEventHandler"
	private var methodChannel: MethodChannel? = null
	fun onAttached(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
		YandexAdEventHandlerInterface.YandexAdEventHandler.setup(
			flutterPluginBinding.binaryMessenger,
			this
		)
		flutterBinding = flutterPluginBinding
		methodChannel =
			MethodChannel(flutterPluginBinding.binaryMessenger, channelName)
	}

	fun onDetached(binaryMessenger: BinaryMessenger) {
		YandexAdEventHandlerInterface.YandexAdEventHandler.setup(
			binaryMessenger,
			null
		)
	}

	override fun notifyListeners(
		notifyCall: YandexAdEventHandlerInterface
		.YandexAdEventNotifyCall
	) {
		methodChannel?.invokeMethod("notifyListeners", notifyCall.toMap())
	}

	fun notifyListenersByType(
		notifyCallType: YandexAdEventHandlerInterface
		.YandexAdEventNotifyType
	) {
		val notifyCall = YandexAdEventHandlerInterface.YandexAdEventNotifyCall
			.Builder().setType(notifyCallType).build()
		notifyListeners(notifyCall)
	}

	fun notifyOnAdLoaded() {
		notifyListenersByType(YandexAdEventHandlerInterface.YandexAdEventNotifyType.ON_AD_LOADED)
	}

	fun notifyOnAdFailedToLoad() {
		TODO("Not yet implemented")
	}

	fun notifyOnImpression() {
		TODO("Not yet implemented")
	}

	fun notifyOnAdClicked() {
		TODO("Not yet implemented")
	}

	fun notifyOnLeftApplication() {
		TODO("Not yet implemented")
	}

	fun notifyOnReturnedToApplication() {
		TODO("Not yet implemented")
	}
}