part of '../../state.dart';

class LiveWorldBloc extends Cubit<LiveWorldBlocState> {
  LiveWorldBloc() : super(const LiveWorldBlocState());
	Future<void> _onLoad(){
		// Load saved data as Render models
		// Loading order:
		// - tileset
		// - objects
		// - player
	}
}
