import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/level_start/start_options/widgets/player_profile_row.dart';

part 'level_options_screen_state.dart';

class LevelOptionsScreen extends HookWidget {
  const LevelOptionsScreen({
    required this.level,
    required this.onCreatePlayer,
    super.key,
  });
  final TemplateLevelModel level;
  final VoidCallback onCreatePlayer;
  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    final widgetUxState = context.read<LevelStartDialogUxState>();
    final screenSize = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        uiTheme.verticalBoxes.medium,
        Text(
          widgetUxState.templateLevel.name.getValue().toUpperCase(),
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
            checkIsPlayerSelected: widgetUxState.checkIsPlayerSelected,
            onSelected: widgetUxState.onPlayerSelected,
          ),
        ),
        uiTheme.verticalBoxes.medium,
        CheckboxListTile(
          value: widgetUxState.shouldStartTutorial,
          onChanged: widgetUxState.changeShouldStartTutorial,
          title: Text(S.of(context).enableTutorial),
        ),
        uiTheme.verticalBoxes.medium,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Tooltip(
              message: S.of(context).createNewPlayerTooltip,
              child: TextButton.icon(
                onPressed: onCreatePlayer,
                icon: const Icon(Icons.add),
                label: Text(S.of(context).createPlayer),
              ),
            ),
            UiTextButton.text(
              text: S.of(context).play,
              isLongButton: true,
              mainAlignment: MainAxisAlignment.center,
              onPressed: widgetUxState.playersIds.isEmpty
                  ? null
                  : widgetUxState.onPlay,
            ),
          ],
        ),
        uiTheme.verticalBoxes.medium,
      ],
    );
  }
}
