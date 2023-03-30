part of 'models.dart';

@freezed
class AnimationEntryModel with _$AnimationEntryModel {
  const factory AnimationEntryModel({
    @Default(0) final double frameIndex,
    @Default(0) final int framesLength,
    @Default([]) final List<String> framesPaths,
  }) = _AnimationEntryModel;
  const AnimationEntryModel._();
  String get currentFrame => framesPaths[frameIndex.toInt()];
}
