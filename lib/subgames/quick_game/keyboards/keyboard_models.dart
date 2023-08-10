import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wbw_core/wbw_core.dart';

part 'keyboard_models.freezed.dart';

@freezed
sealed class UiKeyboardEvent with _$UiKeyboardEvent {
  const factory UiKeyboardEvent.addCharacter({
    required final String character,
  }) = UiKeyboardEventAddCharacter;
  const factory UiKeyboardEvent.removeCharacter() =
      UiKeyboardEventRemoveCharacter;
}

enum KeyboardLanguage {
  en,
  ru;

  static const enLetters = [
    ['q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p'],
    ['a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l'],
    ['z', 'x', 'c', 'v', 'b', 'n', 'm'],
  ];
  static const ruLetters = [
    ['й', 'ц', 'у', 'к', 'е', 'н', 'г', 'ш', 'щ', 'з', 'х'],
    ['ф', 'ы', 'в', 'а', 'п', 'р', 'о', 'л', 'д', 'ж', 'э'],
    ['я', 'ч', 'с', 'м', 'и', 'т', 'ь', 'б', 'ю']
  ];

  List<List<String>> get letters => switch (this) {
        KeyboardLanguage.en => enLetters,
        KeyboardLanguage.ru => ruLetters,
      };

  /// rewrite to indexes when there be a lot of letters
  KeyboardLanguage next() => switch (this) {
        KeyboardLanguage.en => KeyboardLanguage.ru,
        KeyboardLanguage.ru => KeyboardLanguage.en,
      };
}

@freezed
class UiKeyboardControllerState with _$UiKeyboardControllerState {
  const factory UiKeyboardControllerState({
    @Default(false) final bool isVisible,
    @Default(KeyboardLanguage.en) final KeyboardLanguage language,
  }) = _UiKeyboardControllerState;
}

class LetterModel {
  LetterModel({
    required this.title,
  }) : id = IdCreator.create();
  final String id;
  final String title;
}
