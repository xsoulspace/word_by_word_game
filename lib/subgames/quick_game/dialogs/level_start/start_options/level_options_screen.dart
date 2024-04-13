import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:map_editor/state/models/models.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/level_start/start_options/widgets/player_profile_row.dart';

part 'level_options_screen_state.dart';

class LevelOptionsScreen extends HookWidget {
  const LevelOptionsScreen({
    required this.level,
    required this.onCreatePlayer,
    super.key,
  });
  final CanvasDataModel level;
  final VoidCallback onCreatePlayer;
  @override
  Widget build(final BuildContext context) {
    final uiTheme = context.uiTheme;
    final widgetUxState = context.read<LevelStartDialogUxNotifier>();
    final locale = useLocale(context);
    final unblockerNotifier = useState(0);
    final statusCubit = context.watch<StatesStatusesCubit>();

    return SingleChildScrollView(
      child: Column(
        children: [
          uiTheme.verticalBoxes.medium,
          GestureDetector(
            onTap: () => unblockerNotifier.value++,
            child: Text(
              S.of(context).selectPlayers.toUpperCase(),
              style: context.textThemeBold.bodyLarge,
              textAlign: TextAlign.center,
            ),
          ),
          uiTheme.verticalBoxes.medium,
          ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 140),
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
          if (kDebugMode || unblockerNotifier.value > 10) ...[
            uiTheme.verticalBoxes.medium,
            Text(
              const LocalizedMap(
                value: {
                  Languages.en: 'Experiments',
                  Languages.ru: 'Эксперименты',
                  Languages.it: 'Esperimenti',
                },
              ).getValue(locale).toUpperCase(),
              style: context.textThemeBold.titleMedium,
            ),
            CheckboxListTile(
              value: widgetUxState.featuresSettings.isTechnologiesEnabled,
              onChanged: (final isEnabled) =>
                  widgetUxState.changeFeaturesSettings(
                (final old) =>
                    old.copyWith(isTechnologiesEnabled: isEnabled == true),
              ),
              title: Text(
                const LocalizedMap(
                  value: {
                    Languages.en: 'Technologies',
                    Languages.ru: 'Технологии',
                    Languages.it: 'Tecnologie',
                  },
                ).getValue(locale),
              ),
            ),
            // TODO(arenukvern): add explanation
            ListTile(
              // TODO(arenukvern): l10n
              title: const Text('Words Language'),
              trailing: WordsLanguageSwitcher(
                onChanged: widgetUxState.changeWordsLanguage,
                value: widgetUxState.wordsLanguage,
              ),
            ),
          ],
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
                isLoading: statusCubit.isLoading,
                isLongButton: true,
                mainAlignment: MainAxisAlignment.center,
                onPressed: widgetUxState.playersIds.isEmpty
                    ? null
                    : () async => widgetUxState.onPlay(context),
              ),
            ],
          ),
          uiTheme.verticalBoxes.medium,
        ],
      ),
    );
  }
}

class WordsLanguageSwitcher extends StatelessWidget {
  const WordsLanguageSwitcher({
    required this.value,
    required this.onChanged,
    super.key,
  });
  final Languages value;
  final ValueChanged<Languages> onChanged;
  @override
  Widget build(final BuildContext context) {
    final wordsLanguages = [Languages.en, Languages.ru];
    return LanguageSwitcherMenu(
      isShortAbbreviationUsed: false,
      languages: wordsLanguages,
      onChanged: onChanged,
      value: value,
    );
  }
}
