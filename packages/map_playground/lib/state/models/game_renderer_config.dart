part of 'models.dart';

@freezed
class GameRendererConfig with _$GameRendererConfig {
  const factory GameRendererConfig({
    @Default(8) final int animationSpeed,
  }) = _GameRendererConfig;
}
