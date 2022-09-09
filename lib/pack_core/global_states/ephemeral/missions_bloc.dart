import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'missions_events.dart';
part 'missions_states.dart';

class MissionsBloc extends Bloc<MissionsEvent, MissionsState> {
  MissionsBloc() : super(const MissionsState.initial());
}
