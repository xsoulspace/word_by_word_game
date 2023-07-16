// ignore_for_file: invalid_annotation_target

part of 'dictionaries_bloc.dart';

@immutable
@freezed
class DictionariesBlocState with _$DictionariesBlocState {
  const factory DictionariesBlocState({
    @Default(LocalDictionaryModel()) final LocalDictionaryModel localDictionary,
  }) = _DictionariesBlocState;
}
