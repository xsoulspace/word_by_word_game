// ignore_for_file: invalid_annotation_target

part of 'dictionaries_bloc.dart';

@immutable
@Freezed(fromJson: false, toJson: false)
class DictionariesBlocState with _$DictionariesBlocState {
  const factory DictionariesBlocState({
    @Default(WordsType({})) final WordsType wordsType,
  }) = _DictionariesBlocState;
}
