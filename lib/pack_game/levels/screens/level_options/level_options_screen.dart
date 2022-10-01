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
    final uiTheme = UiTheme.of(context);
    final globalGameBloc = context.watch<GlobalGameBloc>();
    final liveState = globalGameBloc.getLiveState();
    final playersCharacters = liveState.playersCharacters;
    final routeState = context.watch<RouteState>();
    final routeArgs = LevelRouteArgs.fromJson(routeState.route.parameters);
    final templateLevel =
        globalGameBloc.getTemplateLevelById(id: routeArgs.levelId);
    if (templateLevel == null) return const SizedBox();

    final state = _useLevelOptionsScreenState(
      read: context.read,
      templateLevel: templateLevel,
    );
    final screenSize = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(uiTheme.spacing.large),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  GameBackButton(
                    onPressed: state.onReturnToLevels,
                  ),
                  Expanded(
                    child: Text(
                      templateLevel.stringName.toUpperCase(),
                      style: theme.textTheme.bodyLarge,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              uiTheme.verticalBoxes.extraLarge,
              Text(
                'Choose Your Character',
                style: theme.textTheme.headlineMedium,
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
              Text(
                'Select The Players',
                style: theme.textTheme.headlineMedium,
              ),
              uiTheme.verticalBoxes.large,
              SizedBox(
                height: 200,
                child: PlayerSelectorRow(
                  onPlayerSelected: state.onPlayerSelected,
                  checkIsPlayerSelected: state.checkIsPlayerSelected,
                  onPlayerCreated: state.onPlayerProfileCreated,
                ),
              ),
              uiTheme.verticalBoxes.extraLarge,
              Row(
                children: [
                  TextButton(
                    onPressed: state.onReturnToLevels,
                    child: const Text('Return to all levels'),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: state.onPlay,
                    child: const Text('Play'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
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
    required this.onPlayerSelected,
    required this.checkIsPlayerSelected,
    required this.onPlayerCreated,
    super.key,
  });
  final ValueChanged<PlayerProfileModel> onPlayerSelected;
  final CheckFunction<PlayerProfileModel> checkIsPlayerSelected;
  final ValueChanged<PlayerProfileModel> onPlayerCreated;
  @override
  Widget build(final BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PlayerProfileCreator(
          onPlayerCreated: onPlayerCreated,
        ),
        Expanded(
          child: PlayerProfileList(
            checkIsPlayerSelected: checkIsPlayerSelected,
            onSelected: onPlayerSelected,
          ),
        ),
      ],
    );
  }
}
