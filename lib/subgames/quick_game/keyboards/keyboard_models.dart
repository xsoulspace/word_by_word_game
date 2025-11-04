import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:word_by_word_game/common_imports.dart';

part 'keyboard_models.freezed.dart';

@freezed
sealed class UiKeyboardEvent with _$UiKeyboardEvent {
  const factory UiKeyboardEvent.addCharacter({
    required final String character,
  }) = UiKeyboardEventAddCharacter;
  const factory UiKeyboardEvent.removeCharacter() =
      UiKeyboardEventRemoveCharacter;
}

extension KeyboardLanguageX on KeyboardLanguage {
  static const enLetters = [
    ['q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p'],
    ['a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l'],
    ['z', 'x', 'c', 'v', 'b', 'n', 'm'],
  ];
  static const ruLetters = [
    ['й', 'ц', 'у', 'к', 'е', 'н', 'г', 'ш', 'щ', 'з', 'х'],
    ['ф', 'ы', 'в', 'а', 'п', 'р', 'о', 'л', 'д', 'ж', 'э'],
    ['я', 'ч', 'с', 'м', 'и', 'т', 'ь', 'б', 'ю'],
  ];

  List<List<String>> get letters {
    if (this == englishKeyboard) return enLetters;
    if (this == russianKeyboard) return ruLetters;
    return enLetters;
  }

  /// rewrite to indexes when there be a lot of letters
  KeyboardLanguage next() {
    if (this == englishKeyboard) return russianKeyboard;
    if (this == russianKeyboard) return englishKeyboard;
    return englishKeyboard;
  }
}

extension LanguagesX on UiLanguage {
  KeyboardLanguage toKeyboardLanguage() => KeyboardLanguage.fromLanguage(this);
}

class LetterModel with EquatableMixin {
  LetterModel({required this.title}) : id = IdCreator.create();
  final String id;
  final String title;

  @override
  List<Object?> get props => [id];
}
