part of '../../state.dart';

@freezed
class LiveWorldBlocState with _$LiveWorldBlocState {
  const factory LiveWorldBlocState({
    /// The player object
    required final PlayerModel player,
  }) = _LiveWorldBlocState;
  const LiveWorldBlocState._();
}
