import 'package:flutter/foundation.dart';
import 'package:universal_io/io.dart';
import 'package:word_by_word_game/common_imports.dart';
import 'package:word_by_word_game/pack_core/ads/models/models.dart';

class AdManager implements Loadable, Disposable {
  AdPermissions permissions = AdPermissions.noAds;
  @override
  Future<void> onLoad() async {
    if (Envs.isMarketingMode) return;
    if (Envs.isDebugAds) {
      permissions = AdPermissions.allAdEnabled;
      return;
    }
    if (kIsWeb) {
      if (Envs.store.isYandexGames) {
        permissions = AdPermissions.yandexGamesAds;
      } else {
        permissions = AdPermissions.webAndroidAds;
      }
    } else if (Platform.isAndroid) {
      permissions = AdPermissions.webAndroidAds;
    }
  }

  @override
  void dispose() {
    //
  }
}
