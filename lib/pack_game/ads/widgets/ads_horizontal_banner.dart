import 'package:flutter/material.dart';
import 'package:word_by_word_game/envs.dart';
import 'package:word_by_word_game/pack_game/ads/ads.dart';
import 'package:yandex_ads_sdk/yandex_ads_sdk.dart';

class AdsHorizontalBanner extends StatelessWidget {
  const AdsHorizontalBanner({super.key});

  @override
  Widget build(final BuildContext context) {
    if (!kIsAdsEnabled) return const SizedBox();
    return YandexBannerPlatformView(
      height: 50,
      width: MediaQuery.of(context).size.width,
      adUnitId: Envs.yandexBannerRM,
    );
  }
}
