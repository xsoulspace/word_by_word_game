import 'package:word_by_word_game/common_imports.dart';

class TechLevelAchievedDialog extends StatelessWidget {
  const TechLevelAchievedDialog({required this.onClose, super.key});

  final VoidCallback onClose;

  @override
  Widget build(final BuildContext context) {
    final locale = useLocale(context);
    final technologiesCubit = context.watch<TechnologiesCubit>();
    final currentLevel = technologiesCubit.getCurrentLevel();
    int previousLevelIndex = currentLevel.levelIndex.index - 1;
    previousLevelIndex = previousLevelIndex < 0 ? 0 : previousLevelIndex;
    final achievedLevelIndex = TechnologyLevelIndex.values[previousLevelIndex];
    final achievedLevel = technologiesCubit.levels[achievedLevelIndex.index];
    return DialogScaffold(
      builder: (final context) => Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  LocalizedMap(
                    value: {
                      // TODO(arenukvern): l10n
                      uiLanguages.en: achievedLevel.title,
                      uiLanguages.ru: achievedLevel.title,
                      uiLanguages.it: achievedLevel.title,
                    },
                  ).getValue(locale),
                  style: context.textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
                IconButton.outlined(
                  onPressed: onClose,
                  icon: const Icon(Icons.done),
                ),
              ],
            ),
            Row(
              children: [
                Flexible(
                  child: Text(
                    LocalizedMap(
                      value: {
                        uiLanguages.en:
                            'Congratulations! You achieved a new level!',
                        uiLanguages.ru:
                            'Поздравляем! Вы достигли нового уровня!',
                        uiLanguages.it:
                            'Congratulazioni! Hai raggiunto un nuovo livello!',
                      },
                    ).getValue(locale),
                    style: context.textTheme.labelMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const Gap(24),
            const Divider(),
            const Gap(12),
            Text('Now available', style: context.textTheme.titleMedium),
            const Gap(12),
            ...achievedLevel.technologies.map((final techId) {
              final technology = technologiesCubit.technologies[techId];
              if (technology == null) {
                return const SizedBox.shrink();
              }
              // TODO(arenukvern): add gif and description
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Text(technology.title.getValue(locale)),
                      // Row(
                      //   children: [
                      //     //
                      //     Flexible(child: Text(technology.description.getValue(locale))),
                      //   ],
                      // ),
                    ],
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
