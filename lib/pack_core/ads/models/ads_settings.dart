part of 'models.dart';

@immutable
@Freezed(
  fromJson: false,
  toJson: false,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
abstract class AdPermissions with _$AdPermissions {
  const factory AdPermissions({
    @Default(false) final bool adsAllowed,
    @Default(false) final bool pauseGameScreenBannerEnabled,
    @Default(false) final bool levelEndScreenBannerEnabled,
    @Default(false) final bool onContinueLevelVideoEnabled,
  }) = _AdPermissions;

  const AdPermissions._();
  bool get adsNotAllowed => !adsAllowed;
  static const noAds = AdPermissions();
  static const yandexGamesAds = AdPermissions(
    adsAllowed: true,
    // onContinueLevelVideoEnabled: false,
    // pauseGameScreenBannerEnabled: false,
    // levelEndScreenBannerEnabled: false,
  );
  static const webAndroidAds = AdPermissions(
    adsAllowed: true,
    // onContinueLevelVideoEnabled: false,
    pauseGameScreenBannerEnabled: true,
    levelEndScreenBannerEnabled: true,
  );
  static const allAdEnabled = AdPermissions(
    adsAllowed: true,
    onContinueLevelVideoEnabled: true,
    pauseGameScreenBannerEnabled: true,
    levelEndScreenBannerEnabled: true,
  );
}
