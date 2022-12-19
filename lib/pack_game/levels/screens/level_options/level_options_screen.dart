import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/generated/l10n.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/navigation/navigation.dart';
import 'package:word_by_word_game/pack_game/levels/screens/level_options/widgets/widgets.dart';

part 'level_options_screen_state.dart';

class LevelOptionsScreen extends HookWidget {
  const LevelOptionsScreen({
    required this.level,
    super.key,
  });
  final TemplateLevelModel level;
  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    final globalGameBloc = context.watch<GlobalGameBloc>();
    final liveState = globalGameBloc.getLiveState();
    final playersCharacters = liveState.playersCharacters;
    final routeState = context.watch<RouteState>();
    final templateLevel = globalGameBloc.getTemplateLevelById(id: level.id);
    if (templateLevel == null) return const SizedBox();
    final state = _useLevelOptionsScreenState(
      read: context.read,
      templateLevel: templateLevel,
    );
    final screenSize = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        uiTheme.verticalBoxes.medium,
        Text(
          templateLevel.name.getValue().toUpperCase(),
          style: theme.textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        uiTheme.verticalBoxes.small,
        Text(
          S.of(context).selectPlayers,
          style: theme.textTheme.bodySmall,
          textAlign: TextAlign.center,
        ),
        uiTheme.verticalBoxes.medium,
        Expanded(
          child: PlayerProfileRow(
            checkIsPlayerSelected: state.checkIsPlayerSelected,
            onSelected: state.onPlayerSelected,
          ),
        ),
        uiTheme.verticalBoxes.medium,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: Text(S.of(context).createPlayer),
            ),
            UiTextButton.text(
              text: S.of(context).play,
              isLongButton: true,
              mainAlignment: MainAxisAlignment.center,
              onPressed: state.playersIds.isEmpty ? null : state.onPlay,
            ),
          ],
        ),
        uiTheme.verticalBoxes.medium,
      ],
    );
  }
}
