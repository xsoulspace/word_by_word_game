// ignore_for_file: invalid_annotation_target

part of 'dictionaries_bloc.dart';

@immutable
abstract class DictionariesBlocState {
  const DictionariesBlocState();
}

@immutable
class EmptyDictionariesBlocState extends DictionariesBlocState {
  const EmptyDictionariesBlocState();
}

@immutable
@freezed
class LiveDictionariesBlocState extends DictionariesBlocState
    with _$LiveDictionariesBlocState {
  @JsonSerializable(explicitToJson: true)
  @Implements<DictionariesBlocState>()
  const factory LiveDictionariesBlocState({
    required final LocalDictionaryModel localDictionary,
  }) = _LiveDictionariesBlocState;
}
