import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';

part 'dictionaries_bloc.freezed.dart';
part 'dictionaries_bloc.g.dart';
part 'dictionaries_events.dart';
part 'dictionaries_states.dart';

class DictionariesBlocDiDto {
  DictionariesBlocDiDto.use(final Locator read) : services = read();
  final ServicesCollection services;
}

class DictionariesBloc
    extends Bloc<DictionariesBlocEvent, DictionariesBlocState> {
  DictionariesBloc({
    required this.diDto,
  }) : super(const EmptyDictionariesBlocState()) {
    on<InitDictionariesBlocEvent>(_onInit);
    on<SaveDictionariesBlocEvent>(_onSave);
  }
  final DictionariesBlocDiDto diDto;
  Future<void> _onInit(
    final InitDictionariesBlocEvent event,
    final Emitter<DictionariesBlocState> emit,
  ) async {
    emit(
      LiveDictionariesBlocState(
        localDictionary: event.localDictionary,
      ),
    );
  }

  Future<void> _onSave(
    final SaveDictionariesBlocEvent event,
    final Emitter<DictionariesBlocState> emit,
  ) async {
    await diDto.services.dictionaryPersistence.saveDictionary(
      dictionary: getLiveState().localDictionary,
    );
  }

  LiveDictionariesBlocState getLiveState() {
    final effectiveState = state;
    if (effectiveState is! LiveDictionariesBlocState) {
      throw ArgumentError.value(effectiveState);
    }
    return effectiveState;
  }
}
