import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';

part 'player_profile_creator.freezed.dart';

@freezed
class PlayerProfileCreatorState with _$PlayerProfileCreatorState {
  const factory PlayerProfileCreatorState({
    @Default('') final String nameErrorMessage,
    @Default(Colors.teal) final Color color,
  }) = _PlayerProfileCreatorState;
}

class PlayerProfileCreatorNotifierDto {
  PlayerProfileCreatorNotifierDto(final BuildContext context)
      : dictionariesRespository = context.read();
  final DictionariesRespository dictionariesRespository;
}

enum PlayerProfileCreatorError {
  cannotBeEmpty,
  invalidName;

  static const locales = <PlayerProfileCreatorError, Map<Languages, String>>{
    cannotBeEmpty: {
      Languages.en: 'Name cannot be empty',
      Languages.ru: 'Имя не может быть пустым',
      Languages.it: 'Il nome non puè essere vuoto',
    },
    invalidName: {
      Languages.en: 'Try another name',
      Languages.ru: 'Попробуйте другое имя',
      Languages.it: 'Prova un altro nome',
    },
  };

  String getLocalized(final Locale locale) =>
      LocalizedMap(value: locales[this]!).getValue(locale);
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
    final isValid = await _dto.dictionariesRespository.verifyWord(name);
    if (isValid) return null;
    return PlayerProfileCreatorError.invalidName;
  }

  Future<PlayerProfileModel?> onCreateProfile({
    required final Locale locale,
  }) async {
    final errorMessage = await _validateName();
    if (errorMessage != null) {
      value =
          value.copyWith(nameErrorMessage: errorMessage.getLocalized(locale));
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
