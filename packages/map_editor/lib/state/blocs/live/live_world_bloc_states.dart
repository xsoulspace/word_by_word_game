part of '../../state.dart';

@freezed
class LiveWorldBlocState with _$LiveWorldBlocState {
  const factory LiveWorldBlocState({
    // TODO(arenukvern):
    required final String player,
  }) = _LiveWorldBlocState;
}
