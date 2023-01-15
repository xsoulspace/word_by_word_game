part of 'models.dart';

@immutable
@Freezed(
  fromJson: false,
  toJson: false,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class AdPermissions with _$AdPermissions {
  const factory AdPermissions({
    @Default(false) final bool adsAllowed,
    @Default(false) final bool onGameOpenEnabled,
    @Default(false) final bool pauseGameScreenBannerEnabled,
    @Default(false) final bool levelEndScreenBannerEnabled,
    @Default(false) final bool onLevelEndEnabled,
    @Default(false) final bool onContinueLevelVideoEnabled,
  }) = _AdPermissions;

  const AdPermissions._();
  bool get adsNotAllowed => !adsAllowed;
  static const noAds = AdPermissions();
  static const yandexGamesAds = AdPermissions(
    adsAllowed: true,
    onContinueLevelVideoEnabled: true,
    onGameOpenEnabled: true,
    onLevelEndEnabled: true,
    pauseGameScreenBannerEnabled: false,
    levelEndScreenBannerEnabled: false,
  );
  static const webAndroidAds = AdPermissions(
    adsAllowed: true,
    onContinueLevelVideoEnabled: true,
    pauseGameScreenBannerEnabled: true,
    levelEndScreenBannerEnabled: true,
    onGameOpenEnabled: false,
    onLevelEndEnabled: false,
  );
}
