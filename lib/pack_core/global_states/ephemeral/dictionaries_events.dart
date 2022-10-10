part of 'dictionaries_bloc.dart';

@immutable
abstract class DictionariesBlocEvent extends Equatable {
  const DictionariesBlocEvent();
  @override
  List<Object?> get props => [];
}

@immutable
class InitDictionariesBlocEvent extends DictionariesBlocEvent {
  const InitDictionariesBlocEvent({required this.localDictionary});
  final LocalDictionaryModel localDictionary;
}

@immutable
class AddWordToDictionaryBlocEvent extends DictionariesBlocEvent {
  const AddWordToDictionaryBlocEvent({required this.word});
  final String word;
}

@immutable
class SaveDictionariesBlocEvent extends DictionariesBlocEvent {
  const SaveDictionariesBlocEvent();
}
