import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/level_start/start_options/widgets/player_profile_row.dart';

class LevelOptionsScreen extends HookWidget {
  const LevelOptionsScreen({
    required this.onCreatePlayer,
    super.key,
  });
  final VoidCallback onCreatePlayer;
  @override
  Widget build(final BuildContext context) {
    final uiTheme = context.uiTheme;
    final uxState = context.watch<LevelStartDialogUxNotifier>();
    final unblockerNotifier = useState(0);
    useListenable(uxState.isDictionariesLoading);
    final statusCubit = context.watch<StatesStatusesCubit>();

    return Scrollbar(
      thumbVisibility: true,
      child: SingleChildScrollView(
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
                      : () async => uxState.onStartNewGame(context: context),
                ),
              ],
            ),
            uiTheme.verticalBoxes.medium,
          ],
        ),
      ),
    );
  }
}

class _ExperimentsListView extends HookWidget {
  const _ExperimentsListView({
    required this.unblockerNotifier,
  });
  final ValueNotifier<int> unblockerNotifier;

  @override
  Widget build(final BuildContext context) {
    final uxState = context.read<LevelStartDialogUxNotifier>();
    final locale = useLocale(context);
    useListenable(uxState.isDictionariesLoading);
    final isVisible = kDebugMode || unblockerNotifier.value > 10;
    if (!isVisible) return const SizedBox();
    final featuresSettings = uxState.featuresSettings;
    final isAdvancedGame = featuresSettings.isAdvancedGame;
    final isWindDirectionChangeEnabled =
        featuresSettings.isWindDirectionChangeEnabled;
    final isTechnologiesEnabled = featuresSettings.isTechnologiesEnabled;
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
                    // ignore: lines_longer_than_80_chars
                    'Notice: this feature requires to preload a massive amount of dictionaries (about 30 mb), so first level loading may take a few minutes.',
                Languages.ru:
                    // ignore: lines_longer_than_80_chars
                    'Примечание: данная функция требует предварительного большой загрузки дополнительных словарей (около 30 мб), поэтому первая загрузка уровня займет несколько минут.',
                Languages.it:
                    // ignore: lines_longer_than_80_chars
                    'Nota: questa funzione richiede di caricare un grande numero di dizionari (circa 30 mb), pertanto il caricamento del primo livello potrebbe richiedere alcuni minuti.',
              },
            ).getValue(locale),
          ),
        ),
        if (isAdvancedGame)
          ListTile(
            // TODO(arenukvern): add explanation
            // TODO(arenukvern): l10n
            title: const Text('Words Language'),
            trailing: WordsLanguageSwitcher(
              onChanged: uxState.changeWordsLanguage,
              value: uxState.wordsLanguage,
            ),
          ).animate().fadeIn(),
        if (isAdvancedGame)
          ListTile(
            // TODO(arenukvern): add explanation
            // TODO(arenukvern): l10n
            title: const Text('Wind can change direction'),
            trailing: Switch.adaptive(
              onChanged: (final isEnabled) => uxState.changeFeaturesSettings(
                (final old) => old.copyWith(
                  isWindDirectionChangeEnabled: isEnabled,
                ),
              ),
              value: isWindDirectionChangeEnabled,
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
  Widget build(final BuildContext context) => LanguageSwitcherMenu(
        isShortAbbreviationUsed: false,
        languages: wordsLanguages,
        onChanged: onChanged,
        value: value,
      );
}
