// ignore_for_file: lines_longer_than_80_chars

import 'package:word_by_word_game/common_imports.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/level_start/start_options/level_options.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/widgets/widgets.dart';

class TechLevelsDialog extends StatelessWidget {
  const TechLevelsDialog({required this.onClose, super.key});

  final VoidCallback onClose;

  @override
  Widget build(final BuildContext context) {
    final locale = useLocale(context);
    final levelCubit = context.read<LevelBloc>();
    final wordsLanguage =
        context.select<LevelBloc, Languages>((final c) => c.wordsLanguage);
    final wordsLocale = Locales.byLanguage(wordsLanguage);
    final technologiesCubit = context.watch<TechnologiesCubit>();
    final (
      levelIndex: lastLevelIndex,
      :scoreLeftForNextLevel,
      :technologies,
      :title,
      :scoresByLevel,
    ) = technologiesCubit.getCurrentLevel();
    return DialogScaffold(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      top: Padding(
        padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
        child: Row(
          children: [
            Text(
              const LocalizedMap(
                value: {
                  Languages.en: 'Technologies Progress',
                  Languages.ru: 'Прогресс технологий',
                  Languages.it: 'Progresso tecnologie',
                },
              ).getValue(locale),
              style: context.textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            IconButton.outlined(
              onPressed: onClose,
              icon: const Icon(Icons.close),
            ),
          ],
        ),
      ),
      children: [
        Builder(
          builder: (final context) {
            final color = context.colorScheme.onSurface.withOpacity(0.7);
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  child: Card.outlined(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 6,
                        horizontal: 8,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.lightbulb_outline_rounded,
                            size: 24,
                            color: color,
                          ),
                          const Gap(4),
                          Text(
                            const LocalizedMap(
                              value: {
                                Languages.en:
                                    'Use words to research technology faster.',
                                Languages.ru:
                                    'Использовать слова для быстрого исследования технологий.',
                                Languages.it:
                                    'Usare parole per un ricerche veloce della tecnologia.',
                              },
                            ).getValue(locale),
                            textAlign: TextAlign.center,
                            style: context.textTheme.bodyMedium
                                ?.copyWith(color: color),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card.outlined(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 6,
                      horizontal: 8,
                    ),
                    child: Column(
                      children: [
                        Icon(
                          Icons.language,
                          color: color,
                        ),
                        const Gap(4),
                        Text(
                          // TODO(arenukvern): l10n
                          'Words Language',
                          style: context.textTheme.bodyMedium
                              ?.copyWith(color: color),
                        ),
                        WordsLanguageSwitcher(
                          onChanged: levelCubit.onChangeWordsLanguage,
                          value: wordsLanguage,
                        ),
                      ],
                    ),
                  ),
                ),
                Card.outlined(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 6,
                      horizontal: 16,
                    ),
                    child: Column(
                      children: [
                        Icon(
                          Icons.landscape_outlined,
                          color: color,
                        ),
                        Text(
                          'Next Level (${lastLevelIndex.index})',
                          style: context.textTheme.bodyMedium
                              ?.copyWith(color: color),
                        ),
                        Builder(
                          builder: (final context) {
                            final nextScore =
                                scoresByLevel[lastLevelIndex.index]
                                    .formattedScore;
                            final scoreLeft =
                                scoreLeftForNextLevel.value.formattedScore;
                            return Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: '${nextScore - scoreLeft}',
                                    style: context.textThemeBold.titleMedium
                                        ?.copyWith(
                                      color: context.colorScheme.primary,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '/$nextScore',
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
        const Gap(12),
        ...technologiesCubit.levels.mapIndexed(
          (final index, final level) => _TechLevel(
            wordsLocale: wordsLocale,
            wordsLanguage: wordsLanguage,
            lastLevelIndex: lastLevelIndex,
            index: index,
            level: level,
            technologies: technologiesCubit.technologies,
          ),
        ),
      ],
    );
  }
}

class _TechLevel extends StatelessWidget {
  const _TechLevel({
    required this.index,
    required this.lastLevelIndex,
    required this.level,
    required this.wordsLanguage,
    required this.technologies,
    required this.wordsLocale,
    super.key,
  });
  final TechnologyLevelIndex lastLevelIndex;
  final int index;
  final TechnologyLevelTuple level;
  final Languages wordsLanguage;
  final Locale wordsLocale;
  final Map<TechnologyModelId, TechnologyModel> technologies;

  @override
  Widget build(final BuildContext context) {
    const iconSize = 40.0;
    const iconPadding = 12.0;
    final isUnblocked = (index + 1) <= lastLevelIndex.index;
    final color =
        isUnblocked ? null : context.colorScheme.onSurface.withOpacity(0.4);
    return DefaultTextStyle.merge(
      style: TextStyle(color: color),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(12),
              Padding(
                padding: const EdgeInsets.only(left: 6),
                child: DefaultTextStyle.merge(
                  style: context.textTheme.titleLarge?.copyWith(
                    color: color,
                  ),
                  child: Row(
                    children: [
                      Text('$index'),
                      const Gap(12),
                      Text(level.title),
                    ],
                  ),
                ),
              ),
              const Gap(8),
              Row(
                children: [
                  const Text('Technologies'),
                  const Gap(12),
                  Expanded(
                    child: Wrap(
                      runSpacing: 2,
                      spacing: 2,
                      children: [
                        ...level.technologies.map(
                          (final id) {
                            final tech = technologies[id]!;
                            return Card(
                              margin: EdgeInsets.zero,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 4,
                                  horizontal: 12,
                                ),
                                child: Text(
                                  tech.title.getValue(wordsLocale),
                                  style: context.textThemeBold.titleMedium
                                      ?.copyWith(color: color),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: iconPadding + iconSize),
                ],
              ),
              const Gap(12),
              Row(
                children: [
                  const Text('Words'),
                  const Gap(12),
                  Expanded(
                    child: Wrap(
                      spacing: 2,
                      runSpacing: 2,
                      children: [
                        ...level.technologies
                            .map(
                              (final id) => technologies[id]!
                                  .unlockCondition
                                  .languageWords[wordsLanguage]!,
                            )
                            .flattened
                            .map(
                              (final word) => ActionChip(
                                onPressed: word.isUsed ? null : () {},
                                padding: EdgeInsets.zero,
                                label: Text(word.word),
                                side: color == null
                                    ? null
                                    : BorderSide(color: color),
                                labelStyle: TextStyle(color: color),
                              ),
                            )
                            .nonNulls,
                      ],
                    ),
                  ),
                  const SizedBox(width: iconPadding + iconSize),
                ],
              ),
              const Gap(12),
              Divider(color: color),
            ],
          ),
          Positioned(
            right: iconPadding,
            top: 0,
            bottom: 0,
            child: IconTheme(
              data: IconThemeData(
                size: iconSize,
                color: isUnblocked
                    ? context.colorScheme.primary
                    : context.colorScheme.secondary,
              ),
              child: Icon(isUnblocked ? Icons.check : Icons.lock),
            ),
          ),
        ],
      ),
    );
  }
}
