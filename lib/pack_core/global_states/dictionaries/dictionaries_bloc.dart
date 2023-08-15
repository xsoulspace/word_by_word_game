import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wbw_core/wbw_core.dart';

part 'dictionaries_bloc.freezed.dart';
part 'dictionaries_states.dart';

class DictionariesBlocDiDto {
  DictionariesBlocDiDto.use(final BuildContext context)
      : services = context.read();
  final ServicesCollection services;
}

class DictionariesBloc extends Cubit<DictionariesBlocState> {
  DictionariesBloc({
    required this.diDto,
  }) : super(const DictionariesBlocState());
  final DictionariesBlocDiDto diDto;
  Future<void> onLoad({
    required final LocalDictionaryModel localDictionary,
  }) async {
    emit(
      DictionariesBlocState(localDictionary: localDictionary),
    );
  }

  Future<void> onSave() async {
    await diDto.services.dictionariesRepository.saveDictionary(
      dictionary: state.localDictionary,
    );
  }

  Future<void> onAddWord({
    required final String word,
  }) async {
    final dictionary = state.localDictionary;
    final updatedDictionary =
        dictionary.copyWith(words: {...dictionary.words, word});
    final updatedState = state.copyWith(
      localDictionary: updatedDictionary,
    );
    emit(updatedState);
    unawaited(onSave());
  }
}
