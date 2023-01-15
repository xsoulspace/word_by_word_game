import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:universal_io/io.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/envs.dart';
import 'package:word_by_word_game/pack_game/ads/models/models.dart';
import 'package:word_by_word_game/pack_game/ads/states/ad_manager.dart';
import 'package:yandex_ads_sdk/yandex_ads_sdk.dart';

class AdOnGameStartFullScreen extends AdWidget {
  const AdOnGameStartFullScreen({super.key});
  @override
  String getAdUnitId(
    final AdPermissions permissions,
    final WidthFormFactor screenWidth,
  ) {
    if (kIsWeb) {
      if (screenWidth == WidthFormFactor.mobile) {
        return Envs.yandexFullscreenYGMobileWeb;
      } else {
        return Envs.yandexFullscreenYGDesktopWeb;
      }
    }
    return '';
  }

  @override
  bool isAdAllowed(final AdPermissions permissions) =>
      permissions.onGameOpenEnabled;

  @override
  Widget builder(final BuildContext context, final String adUnitId) {
    return Container();
  }
}

class AdOnLevelEndFullScreen extends AdWidget {
  const AdOnLevelEndFullScreen({super.key});
  @override
  String getAdUnitId(
    final AdPermissions permissions,
    final WidthFormFactor screenWidth,
  ) {
    if (kIsWeb) {
      if (screenWidth == WidthFormFactor.mobile) {
        return Envs.yandexFullscreenYGMobileWeb;
      } else {
        return Envs.yandexFullscreenYGDesktopWeb;
      }
    }
    return '';
  }

  @override
  bool isAdAllowed(final AdPermissions permissions) =>
      permissions.onLevelEndEnabled;

  @override
  Widget builder(final BuildContext context, final String adUnitId) {
    return Container();
  }
}

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
  Widget builder(final BuildContext context, final String adUnitId) {
    return YandexFlexibleBanner(
      height: 50,
      width: MediaQuery.of(context).size.width,
      adUnitId: adUnitId,
    );
  }
}

abstract class AdWidget extends StatelessWidget {
  const AdWidget({required super.key});
  String getAdUnitId(
    final AdPermissions permissions,
    final WidthFormFactor screenWidth,
  );
  bool isAdAllowed(final AdPermissions permissions);
  Widget builder(final BuildContext context, final String adUnitId);
  @override
  Widget build(final BuildContext context) {
    final adManager = context.read<AdManager>();
    final permissions = adManager.permissions;
    if (permissions.adsNotAllowed) return const SizedBox();
    if (!isAdAllowed(permissions)) return const SizedBox();

    final uiTheme = UiTheme.of(context);
    final screenWidth = uiTheme.persistentFormFactors.width;
    final adUnitId = getAdUnitId(permissions, screenWidth);
    if (adUnitId.isEmpty) return const SizedBox();

    return builder(context, adUnitId);
  }
}
