import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
    final uxState = context.read<LevelStartDialogUxNotifier>();
    final unblockerNotifier = useState(0);
    useListenable(uxState.isDictionariesLoading);
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
              checkIsPlayerSelected: uxState.checkIsPlayerSelected,
              onSelected: uxState.onPlayerSelected,
            ),
          ),
          uiTheme.verticalBoxes.medium,
          CheckboxListTile(
            value: uxState.shouldStartTutorial,
            onChanged: uxState.changeShouldStartTutorial,
            title: Text(S.of(context).enableTutorial),
          ),
          uiTheme.verticalBoxes.medium,
          _ExperimentsListView(unblockerNotifier: unblockerNotifier),
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
                isLoading: uxState.isDictionariesLoading.value ||
                    statusCubit.isLoading,
                isLongButton: true,
                mainAlignment: MainAxisAlignment.center,
                onPressed: uxState.playersIds.isEmpty
                    ? null
                    : () async => uxState.onPlay(context),
              ),
            ],
          ),
          uiTheme.verticalBoxes.medium,
        ],
      ),
    );
  }
}

class _ExperimentsListView extends HookWidget {
  const _ExperimentsListView({
    required this.unblockerNotifier,
    super.key,
  });
  final ValueNotifier<int> unblockerNotifier;

  @override
  Widget build(final BuildContext context) {
    final uiTheme = context.uiTheme;
    final uxState = context.read<LevelStartDialogUxNotifier>();
    final locale = useLocale(context);
    useListenable(uxState.isDictionariesLoading);
    final isVisible = kDebugMode || unblockerNotifier.value > 10;
    if (!isVisible) return const SizedBox();

    final isTechnologiesEnabled =
        uxState.featuresSettings.isTechnologiesEnabled;
    final isDictionariesLoading = uxState.isDictionariesLoading.value;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
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
          value: isTechnologiesEnabled,
          onChanged: (final isEnabled) => uxState.changeFeaturesSettings(
            (final old) =>
                old.copyWith(isTechnologiesEnabled: isEnabled == true),
          ),
          title: Row(
            children: [
              Text(
                const LocalizedMap(
                  value: {
                    Languages.en: 'Technologies',
                    Languages.ru: 'Технологии',
                    Languages.it: 'Tecnologie',
                  },
                ).getValue(locale),
              ),
              if (isDictionariesLoading) ...[
                const Gap(12),
                const UiCircularProgress(),
              ],
            ],
          ),
          enabled: !isDictionariesLoading,
          subtitle: Text(
            const LocalizedMap(
              value: {
                Languages.en:
                    'Notice: this feature requires to preload additional dictionaries, so first level loading will take some time (minutes).',
                Languages.ru:
                    'Примечание: данная функция требует предварительного загрузки дополнительных словарей, поэтому первая загрузка уровня займет некоторое время (минут).',
                Languages.it:
                    'Nota: questa funzione richiede di caricare ulteriori dizionari, pertanto il caricamento del primo livello richiede un po’ di tempo (minuti).',
              },
            ).getValue(locale),
          ),
        ),
        if (isTechnologiesEnabled)
          ListTile(
            // TODO(arenukvern): add explanation
            // TODO(arenukvern): l10n
            title: const Text('Words Language'),
            trailing: WordsLanguageSwitcher(
              onChanged: uxState.changeWordsLanguage,
              value: uxState.wordsLanguage,
            ),
          ).animate().fadeIn(),
      ],
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
