import 'package:flutter/material.dart';
import 'package:wbw_foundation/wbw_foundation.dart';
import 'package:wbw_locale/wbw_locale.dart';

/// A widget that allows the user to select a language from a menu.
///
/// This widget provides a menu with options for selecting different languages.
/// It uses a [MenuAnchor] to display the menu and a [TextButton] to toggle it.
/// The selected language is displayed in a [Text] widget.
///
/// The [UiLanguageSwitcherMenu] widget is a stateless widget that takes
/// the following parameters:
///
/// @ai The [UiLanguageSwitcherMenu] widget is a stateless widget that takes
/// the following parameters:
///
/// - [value]: The current language selected by the user.
/// - [onChanged]: A callback function that is called when the user
/// selects a new language.
/// - [isShortAbbreviationUsed]: A boolean value that determines whether
/// to use short abbreviations for the language names.
/// - [languages]: A list of languages to display in the menu.
///
/// The widget uses a [MenuAnchor] to display the menu and a [TextButton]
/// to toggle it.
/// The selected language is displayed in a [Text] widget.
class UiLanguageSwitcherMenu extends StatelessWidget {
  const UiLanguageSwitcherMenu({
    required this.value,
    required this.onChanged,
    this.isShortAbbreviationUsed = true,
    this.languages = const [],
    super.key,
  });
  final Languages value;
  final List<Languages> languages;
  final ValueChanged<Languages> onChanged;
  final bool isShortAbbreviationUsed;
  @override
  Widget build(final BuildContext context) {
    final effectiveValues = (languages.isNotEmpty ? languages : Languages.all);
    final List<Widget> menuChildren;

    if (isShortAbbreviationUsed) {
      menuChildren = effectiveValues
          .map(
            (final lang) => MenuItemButton(
              child: Text(lang.name),
              onPressed: () => onChanged(lang),
            ),
          )
          .toList();
    } else {
      menuChildren = namedLocalesMap.entries
          .where((final e) => effectiveValues.contains(e.key))
          .map(
            (final e) => MenuItemButton(
              child: Text(e.value.name),
              onPressed: () => onChanged(e.key),
            ),
          )
          .toList();
    }
    return MenuAnchor(
      menuChildren: menuChildren,
      builder: (final context, final controller, final child) => TextButton(
        onPressed: () {
          if (controller.isOpen) {
            controller.close();
          } else {
            controller.open();
          }
        },
        child: Text(
          isShortAbbreviationUsed ? value.name : namedLocalesMap[value]!.name,
        ),
      ),
    );
  }
}

/// maybe remove in future
class LanguageSwitcherMenuOld extends StatelessWidget {
  const LanguageSwitcherMenuOld({
    required this.languages,
    required this.initLanguage,
    required this.onSelected,
    super.key,
  });
  final List<Languages> languages;
  final Languages initLanguage;
  final ValueChanged<Languages?> onSelected;

  @override
  Widget build(final BuildContext context) => DropdownMenu<Languages>(
        menuStyle: _defaultDropdownMenuStyle,
        textStyle: context.textTheme.bodyMedium,
        inputDecorationTheme: _defaultDropdownMenuInputTheme,
        initialSelection: initLanguage,
        onSelected: onSelected,
        dropdownMenuEntries: namedLocalesMap.entries
            .where((final e) => languages.contains(e.key))
            .map(
              (final e) => DropdownMenuEntry(
                value: e.key,
                label: e.value.name,
              ),
            )
            .toList(),
      );
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
