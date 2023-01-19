import 'package:flutter/foundation.dart';
import 'package:universal_io/io.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/envs.dart';
import 'package:word_by_word_game/pack_game/ads/models/models.dart';
import 'package:word_by_word_game/pack_game/ads/widgets/ad_widget.dart';
import 'package:yandex_ads_sdk/yandex_ads_sdk.dart';

class AdLevelEndScreenBanner extends AdWidget {
  const AdLevelEndScreenBanner({super.key});
  @override
  String getAdUnitId(
    final AdPermissions permissions,
    final WidthFormFactor screenWidth,
  ) {
    if (kIsWeb) {
      if (screenWidth == WidthFormFactor.mobile) {
        return Envs.yandexFlexibleMobileWeb;
      } else {
        return Envs.yandexFlexibleDesktopWeb;
      }
    } else if (Platform.isAndroid) {
      return Envs.yandexFlexibleMobile;
    }
    return '';
  }

  @override
  bool isAdAllowed(final AdPermissions permissions) =>
      permissions.levelEndScreenBannerEnabled;
  @override
  Widget debugBuilder(final BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Placeholder(
      fallbackHeight: 50,
      fallbackWidth: size.width,
      child: const Text('Banner Ad levelEndScreenBannerEnabled'),
    );
  }

  @override
  Widget builder(final BuildContext context, final String adUnitId) {
    return YandexFlexibleBanner(
      height: 50,
      width: MediaQuery.of(context).size.width,
      adUnitId: adUnitId,
    );
  }
}

class AdPauseScreenBanner extends AdWidget {
  const AdPauseScreenBanner({super.key});
  @override
  String getAdUnitId(
    final AdPermissions permissions,
    final WidthFormFactor screenWidth,
  ) {
    if (kIsWeb) {
      if (screenWidth == WidthFormFactor.mobile) {
        return Envs.yandexFlexibleMobileWeb;
      } else {
        return Envs.yandexFlexibleDesktopWeb;
      }
    } else if (Platform.isAndroid) {
      return Envs.yandexFlexibleMobile;
    }
    return '';
  }

  @override
  bool isAdAllowed(final AdPermissions permissions) =>
      permissions.pauseGameScreenBannerEnabled;
  @override
  Widget debugBuilder(final BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Placeholder(
      fallbackHeight: 50,
      fallbackWidth: size.width,
      child: const Text('Banner Ad pauseGameScreenBannerEnabled'),
    );
  }

  @override
  Widget builder(final BuildContext context, final String adUnitId) {
    return YandexFlexibleBanner(
      height: 50,
      width: MediaQuery.of(context).size.width,
      adUnitId: adUnitId,
    );
  }
}
