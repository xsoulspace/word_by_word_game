part of '../../state.dart';

class LiveWorldBloc extends Cubit<LiveWorldBlocState> {
  LiveWorldBloc()
      : super(const LiveWorldBlocState(player: PlayerObjectModel.empty));
}
