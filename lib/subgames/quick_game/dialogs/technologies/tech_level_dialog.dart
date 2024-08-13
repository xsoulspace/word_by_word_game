// ignore_for_file: lines_longer_than_80_chars

import 'package:word_by_word_game/common_imports.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/level_start/start_options/level_options.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/widgets/widgets.dart';

class TechnoLevelDialog extends StatelessWidget {
  const TechnoLevelDialog({super.key});

  @override
  Widget build(final BuildContext context) {
    final locale = useLocale(context);
    final levelCubit = context.read<LevelBloc>();
    final wordsLanguage =
        context.select<LevelBloc, Languages>((final c) => c.wordsLanguage);

    return DialogScaffold(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      children: [
        const Gap(16),
        Card.outlined(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Column(
              children: [
                const Gap(6),
                Text(
                  const LocalizedMap(
                    value: {
                      Languages.en:
                          'Tip: to change researching technology enter new word and choose select technology action',
                      Languages.ru:
                          'Подсказка: для изменения текущей технологии введите новое слово и выберите действие "Выбрать технологию"',
                      Languages.it:
                          'Suggerimento: per modificare la tecnologia corrente, inserisci una nuova parola e scegli l\'azione "Seleziona tecnologia"',
                    },
                  ).getValue(locale),
                  textAlign: TextAlign.center,
                ),
                const Gap(12),
                Text(
                  const LocalizedMap(
                    value: {
                      Languages.en:
                          'Tip: use words to research technology faster.',
                      Languages.ru:
                          'Подсказка: использовать слова для быстрого исследования технологий.',
                      Languages.it:
                          'Suggerimento: usare parole per un ricerche veloce della tecnologia.',
                    },
                  ).getValue(locale),
                  textAlign: TextAlign.center,
                ),
                const Gap(6),
              ],
            ),
          ),
        ),
        const Gap(12),
        ListTile(
          title: const Text(
            // TODO(arenukvern): l10n
            'Words Language',
          ),
          trailing: WordsLanguageSwitcher(
            onChanged: levelCubit.onChangeWordsLanguage,
            value: wordsLanguage,
          ),
        ),
        const Gap(6),
      ],
    );
  }
}
