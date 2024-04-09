import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/keyboards/keyboard_elements.dart';
import 'package:word_by_word_game/subgames/quick_game/keyboards/keyboard_models.dart';

class LocaleSwitcherButton extends StatelessWidget {
  const LocaleSwitcherButton({
    super.key,
  });

  @override
  Widget build(final BuildContext context) {
    final uiKeyboardController = context.read<UiKeyboardController>();
    final userNotifier = context.read<AppSettingsNotifier>();
    final locale = useLocale(context);
    final language = Languages.values.byName(locale.languageCode);
    final initLocale = namedLocalesMap[language]?.locale ?? Locales.en;
    return DropdownMenu<Locale>(
      menuStyle: _defaultDropdownMenuStyle,
      textStyle: context.textTheme.bodyMedium,
      inputDecorationTheme: _defaultDropdownMenuInputTheme,
      initialSelection: initLocale,
      onSelected: (final newLocale) async {
        await userNotifier.updateLocale(newLocale);
        final definedLocale = uiLocaleNotifier.value;
        uiKeyboardController.onChangeLanguage(
          KeyboardLanguage.fromlanguage(
            Languages.byLanguageCode(definedLocale.languageCode),
          ),
        );
      },
      dropdownMenuEntries: namedLocalesMap.values
          .map(
            (final e) => DropdownMenuEntry(
              value: e.locale,
              label: e.name,
            ),
          )
          .toList(),
    );
  }
}

final _defaultDropdownMenuStyle = MenuStyle(
  shape: WidgetStatePropertyAll(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(9),
    ),
  ),
);

const _defaultDropdownMenuInputTheme = InputDecorationTheme(
  border: InputBorder.none,
  isCollapsed: true,
  isDense: true,
  contentPadding: EdgeInsets.symmetric(vertical: 5),
);
