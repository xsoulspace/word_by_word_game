part of '../../state.dart';

class LiveWorldBloc extends Cubit<LiveWorldBlocState> {
  LiveWorldBloc() : super(const LiveWorldBlocState(player: PlayerModel.empty));
  Future<void> _onLoad() async {
    // Load saved data as Render models
    // Loading order:
    // - tileset
    // - objects
    // - player
  }
}
