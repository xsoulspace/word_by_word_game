import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'debug_events.dart';
part 'debug_states.dart';

class DebugBloc extends Bloc<DebugEvent, DebugState> {
  DebugBloc() : super(const DebugState.initial());
}
