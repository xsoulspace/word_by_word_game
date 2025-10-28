import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:word_by_word_game/common_imports.dart';

part 'player_profile_creator.freezed.dart';

@freezed
abstract class PlayerProfileCreatorState with _$PlayerProfileCreatorState {
  const factory PlayerProfileCreatorState({
    @Default('') final String nameErrorMessage,
    @Default(Colors.teal) final Color color,
  }) = _PlayerProfileCreatorState;
}

class PlayerProfileCreatorNotifierDto {
  PlayerProfileCreatorNotifierDto(final BuildContext context)
    : dictionariesRespository = context.read();
  final WordsRespository dictionariesRespository;
}

enum PlayerProfileCreatorError {
  cannotBeEmpty,
  invalidName;

  static final locales = <PlayerProfileCreatorError, Map<UiLanguage, String>>{
    cannotBeEmpty: {
      uiLanguages.en: 'Name cannot be empty',
      uiLanguages.ru: 'Имя не может быть пустым',
      uiLanguages.it: 'Il nome non puè essere vuoto',
    },
    invalidName: {
      uiLanguages.en: 'Try another name',
      uiLanguages.ru: 'Попробуйте другое имя',
      uiLanguages.it: 'Prova un altro nome',
    },
  };

  String getLocalized(final Locale locale) =>
      LocalizedMap(locales[this]!).getValue(locale);
}

class PlayerProfileCreatorNotifier
    extends ValueNotifier<PlayerProfileCreatorState> {
  PlayerProfileCreatorNotifier(final BuildContext context)
    : _dto = PlayerProfileCreatorNotifierDto(context),
      super(const PlayerProfileCreatorState());
  final PlayerProfileCreatorNotifierDto _dto;
  final nameController = TextEditingController();
  Color get color => value.color;
  set color(final Color newColor) => value = value.copyWith(color: newColor);

  Future<PlayerProfileCreatorError?> _validateName() async {
    final name = nameController.text;
    if (name.isEmpty) return PlayerProfileCreatorError.cannotBeEmpty;
    final isValid = await _dto.dictionariesRespository.verifyNonProfanityWord(
      name,
    );
    if (isValid) return null;
    return PlayerProfileCreatorError.invalidName;
  }

  Future<PlayerProfileModel?> onCreateProfile({
    required final Locale locale,
  }) async {
    final errorMessage = await _validateName();
    if (errorMessage != null) {
      value = value.copyWith(
        nameErrorMessage: errorMessage.getLocalized(locale),
      );
      return null;
    }
    final player = PlayerProfileModel.create(
      name: nameController.text,
      colorValue: value.color.value,
    );

    value = const PlayerProfileCreatorState();

    return player;
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }
}
