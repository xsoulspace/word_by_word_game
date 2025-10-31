part of '../models.dart';

@freezed
abstract class AnimationEntryModel with _$AnimationEntryModel {
  const factory AnimationEntryModel({
    @Default(0) final double frameIndex,
    @Default(0) final int framesLength,
    @Default([]) final List<String> framesPaths,
  }) = _AnimationEntryModel;
  const AnimationEntryModel._();
  factory AnimationEntryModel.singleFrame(final String path) =>
      AnimationEntryModel(framesLength: 1, framesPaths: [path]);
  String get currentFramePath => framesPaths[frameIndex.toInt()];
}
