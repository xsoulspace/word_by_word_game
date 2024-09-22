import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wbw_core/wbw_core.dart';

part 'dictionaries_bloc.freezed.dart';

class DictionariesBlocDiDto {
  DictionariesBlocDiDto.use(final BuildContext context)
      : services = context.read();
  final ServicesCollection services;
}

@immutable
@Freezed(fromJson: false, toJson: false)
class DictionariesBlocState with _$DictionariesBlocState {
  const factory DictionariesBlocState({
    @Default(WordsType({})) final WordsType wordsType,
  }) = _DictionariesBlocState;
}

class DictionariesBloc extends Cubit<DictionariesBlocState> {
  DictionariesBloc(final BuildContext context)
      : diDto = DictionariesBlocDiDto.use(context),
        super(const DictionariesBlocState());
  final DictionariesBlocDiDto diDto;
  Future<void> onLoad({
    required final WordsType wordsType,
  }) async {
    emit(
      DictionariesBlocState(wordsType: wordsType),
    );
  }

  Future<void> onSave() async {
    await diDto.services.userWordsRepository.saveUserWords(state.wordsType);
  }

  Future<void> onAddWord({
    required final String word,
  }) async {
    final wordsType = state.wordsType;
    final updatedWords = WordsType({...wordsType.words, word});
    final updatedState = state.copyWith(wordsType: updatedWords);
    emit(updatedState);
    unawaited(onSave());
  }
}
