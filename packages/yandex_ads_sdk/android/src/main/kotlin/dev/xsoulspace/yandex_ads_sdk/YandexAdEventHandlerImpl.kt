package dev.xsoulspace.yandex_ads_sdk

import android.util.Log
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodChannel

class YandexAdEventHandlerImpl :
	YandexAdEventHandlerInterface.YandexAdEventHandler {
	private lateinit var flutterBinding: FlutterPlugin.FlutterPluginBinding
	private val channelName =
		"dev.flutter.pigeon_attachment.YandexAdEventHandler"
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

	private fun notifyListenersByType(
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
		notifyListenersByType(YandexAdEventHandlerInterface.YandexAdEventNotifyType.ON_AD_FAILED_TO_LOAD)
	}

	fun notifyOnImpression() {
		notifyListenersByType(YandexAdEventHandlerInterface.YandexAdEventNotifyType.ON_IMPRESSION)
	}

	fun notifyOnAdClicked() {
		notifyListenersByType(YandexAdEventHandlerInterface.YandexAdEventNotifyType.ON_AD_CLICKED)
	}

	fun notifyOnLeftApplication() {
		notifyListenersByType(YandexAdEventHandlerInterface.YandexAdEventNotifyType.ON_LEFT_APPLICATION)
	}

	fun notifyOnReturnedToApplication() {
		notifyListenersByType(YandexAdEventHandlerInterface.YandexAdEventNotifyType.ON_RETURNED_TO_APPLICATION)
	}
}