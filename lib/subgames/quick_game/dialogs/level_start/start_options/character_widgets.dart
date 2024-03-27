import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';

class CharactersDialog extends StatelessWidget {
  const CharactersDialog({super.key});

  @override
  Widget build(final BuildContext context) {
    final globalGameBloc = context.watch<GlobalGameBloc>();
    final liveState = globalGameBloc.state;
    final playersCharacters = liveState.playersCharacters;

    return CharactersRow(
      characters: playersCharacters,
      checkIsCharacterSelected: (final playerCharacter) => false,
      onCharacterPressed: (final value) {},
    );
  }
}

class CharactersRow extends StatelessWidget {
  const CharactersRow({
    required this.checkIsCharacterSelected,
    required this.onCharacterPressed,
    required this.characters,
    super.key,
  });
  final ValueChanged<PlayerCharacterModel> onCharacterPressed;
  final CheckFunction<PlayerCharacterModel> checkIsCharacterSelected;
  final List<PlayerCharacterModel> characters;
  @override
  Widget build(final BuildContext context) => ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: characters.length,
        itemBuilder: (final context, final index) {
          final character = characters[index];
          return CharacterCard(
            selected: checkIsCharacterSelected(character),
            onPressed: onCharacterPressed,
            character: character,
            key: ValueKey(character),
          );
        },
      );
}

class CharacterAvatarButton extends StatelessWidget {
  /// Displays default character
  // ignore: prefer_const_constructors_in_immutables
  CharacterAvatarButton.useDefault({super.key}) : isDefault = true;
  final bool isDefault;
  @override
  Widget build(final BuildContext context) {
    final globalGameBloc = context.watch<GlobalGameBloc>();
    final liveState = globalGameBloc.state;
    final playersCharacters = liveState.playersCharacters;
    if (!isDefault) throw UnsupportedError('isNotDefault character');
    // TODO(arenukvern): add default character
    /// Add deafult character selection
    final character = playersCharacters.first;
    const dimension = 48.0;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: dimension,
          height: dimension,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(dimension),
            border: Border.all(),
          ),
          child: Center(
            child: Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/characters/${character.characterIcon}_highres.png',
                  ),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
        ),
        Text(character.localizedName.getValue()),
      ],
    );
  }
}

class CharacterCard extends StatelessWidget {
  const CharacterCard({
    required this.selected,
    required this.character,
    required this.onPressed,
    super.key,
  });
  final PlayerCharacterModel character;
  final ValueChanged<PlayerCharacterModel> onPressed;
  final bool selected;
  @override
  Widget build(final BuildContext context) {
    final uiTheme = context.uiTheme;
    final theme = Theme.of(context);
    return Card(
      elevation: selected ? 12.0 : 1.0,
      color: selected ? theme.colorScheme.onTertiary : null,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () => onPressed(character),
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                margin: EdgeInsets.all(uiTheme.spacing.medium).copyWith(
                  top: 36,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/characters/${character.characterIcon}_highres.png',
                    ),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(uiTheme.spacing.medium),
              child: Text(character.localizedName.getValue()),
            ),
          ],
        ),
      ),
    );
  }
}
