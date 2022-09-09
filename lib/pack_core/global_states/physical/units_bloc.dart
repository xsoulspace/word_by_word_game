import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'units_events.dart';
part 'units_states.dart';

/// People, rovers, rockets etc - visible things on the screen
class UnitsBloc extends Bloc<UnitsEvent, UnitsState> {
  UnitsBloc() : super(const UnitsState.initial());
}
