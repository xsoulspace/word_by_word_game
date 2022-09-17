import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/navigation/navigation.dart';
import 'package:word_by_word_game/pack_game/levels/screens/level_options/widgets/widgets.dart';

part 'level_options_screen_state.dart';

class LevelOptionsScreen extends HookWidget {
  const LevelOptionsScreen({super.key});

  @override
  Widget build(final BuildContext context) {
    final state = _useLevelOptionsScreenState(read: context.read);
    final uiTheme = UiTheme.of(context);
    final globalGameBloc = context.watch<GlobalGameBloc>();
    final liveState = globalGameBloc.getLiveState();
    final players = liveState.playersCollection;
    final playersCharacters = liveState.playersCharacters;
    final routeState = context.watch<RouteState>();
    final routeArgs = LevelRouteArgs.fromJson(routeState.route.parameters);
    final level = globalGameBloc.getTemplateLevelById(id: routeArgs.levelId);
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(uiTheme.spacing.large),
        child: Column(
          children: [
            Text(level.id.toUpperCase()),
            uiTheme.verticalBoxes.extraLarge,
            const Text(
              'Choose Your Character',
            ),
            uiTheme.verticalBoxes.large,
            SizedBox(
              height: screenSize.height * 0.3,
              child: CharactersRow(
                characters: playersCharacters,
                checkIsCharacterSelected: state.checkIsCharacterSelected,
                onCharacterPressed: state.onCharacterPressed,
              ),
            ),
            uiTheme.verticalBoxes.extraLarge,
            const Text(
              'Select The Players',
            ),
            uiTheme.verticalBoxes.large,
            PlayerSelectorRow(
              players: players,
              onPlayerSelected: state.onPlayerSelected,
              checkIsPlayerSelected: state.checkIsPlayerSelected,
              onPlayerCreated: state.onPlayerProfileCreated,
            ),
          ],
        ),
      ),
    );
  }
}

typedef CheckFunction<T> = bool Function(T);

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
  Widget build(final BuildContext context) {
    return ListView.builder(
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
    final uiTheme = UiTheme.of(context);
    final theme = Theme.of(context);
    return Card(
      elevation: selected ? 12.0 : 1.0,
      color: selected ? theme.colorScheme.onTertiary : null,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () => onPressed(character),
        child: Padding(
          padding: EdgeInsets.all(uiTheme.spacing.medium),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(character.name),
              const Spacer(),
              Text(character.description),
            ],
          ),
        ),
      ),
    );
  }
}

class PlayerSelectorRow extends StatelessWidget {
  const PlayerSelectorRow({
    required this.players,
    required this.onPlayerSelected,
    required this.checkIsPlayerSelected,
    required this.onPlayerCreated,
    super.key,
  });
  final List<PlayerProfileModel> players;
  final ValueChanged<PlayerProfileModel> onPlayerSelected;
  final CheckFunction<PlayerProfileModel> checkIsPlayerSelected;
  final ValueChanged<PlayerProfileModel> onPlayerCreated;
  @override
  Widget build(final BuildContext context) {
    return Row(
      children: [
        PlayerProfileCreator(
          onPlayerCreated: onPlayerCreated,
        ),
      ],
    );
  }
}
