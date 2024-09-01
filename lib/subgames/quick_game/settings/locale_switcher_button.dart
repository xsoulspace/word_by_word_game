import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/keyboards/keyboard_elements.dart';

class LocaleSwitcherButton extends StatelessWidget {
  const LocaleSwitcherButton({
    super.key,
  });

  @override
  Widget build(final BuildContext context) {
    final uiKeyboardController = context.read<UiKeyboardController>();
    final userNotifier = context.read<AppSettingsNotifier>();
    final localeNotifier = useLocale(context);
    final language = Languages.values.byName(localeNotifier.languageCode);

    return LanguageSwitcherMenu(
      value: language,
      languages: Languages.all,
      isShortAbbreviationUsed: false,
      onChanged: (final newLanguage) async {
        final locale = namedLocalesMap[newLanguage];
        await userNotifier.updateLocale(locale?.locale);
        uiKeyboardController.onChangeLanguage(
          KeyboardLanguage.fromLanguage(newLanguage),
        );
      },
    );
  }
}
