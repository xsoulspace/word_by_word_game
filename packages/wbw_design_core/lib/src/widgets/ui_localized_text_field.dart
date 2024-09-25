import 'package:flutter/material.dart';
import 'package:wbw_foundation/wbw_foundation.dart';
import 'package:wbw_locale/wbw_locale.dart';

import 'ui_text_field.dart';

class UiLocalizedTextField extends StatefulWidget {
  const UiLocalizedTextField({
    required this.fieldConstraints,
    required this.value,
    required this.onChanged,
    this.labelText,
    this.focusedBorder,
    this.obscureText = false,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.validator,
    this.focusNode,
    super.key,
  });
  const UiLocalizedTextField.underlined({
    required this.onChanged,
    required this.fieldConstraints,
    required this.value,
    this.labelText,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.validator,
    this.focusNode,
    this.obscureText = false,
    super.key,
  }) : focusedBorder = const UnderlineInputBorder();

  final String? labelText;
  final ValueChanged<LocalizedMap> onChanged;
  final InputBorder? focusedBorder;
  final LocalizedMap value;
  final bool obscureText;
  final BoxConstraints fieldConstraints;
  final FormFieldValidator? validator;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onFieldSubmitted;
  final FocusNode? focusNode;

  @override
  State<UiLocalizedTextField> createState() => _UiLocalizedTextFieldState();
}

class _UiLocalizedTextFieldState extends State<UiLocalizedTextField> {
  late final _textController = TextEditingController(
    text: widget.value.value.isEmpty ? null : widget.value.getValueByLanguage(),
  );
  late LocalizedMap _value = widget.value;
  Languages _language = LocalizedMap.getCurrentLanugage();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant final UiLocalizedTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    final newText =
        widget.value.value.isEmpty ? '' : widget.value.getValueByLanguage();
    if (widget.value != _value || newText != _textController.text) {
      _value = widget.value;
      _textController.text =
          _value.value.isEmpty ? '' : _value.getValueByLanguage(_language);
    }
  }

  @override
  Widget build(final BuildContext context) {
    final Widget child = UiTextField.decorated(
      focusNode: widget.focusNode,
      obscureText: widget.obscureText,
      validator: widget.validator,
      onEditingComplete: widget.onEditingComplete,
      onFieldSubmitted: widget.onFieldSubmitted,
      constraints: widget.fieldConstraints,
      decoration: InputDecoration(
        labelText: widget.labelText,
        focusedBorder: widget.focusedBorder,
      ),
      onChanged: (final value) {
        _value = _value.copyWith(
          value: {..._value.value}..[_language] = value,
        );
        widget.onChanged(_value);
      },
      controller: _textController,
    );

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        child,
        LanguageSwitcherMenu(
          onChanged: (final lang) {
            _language = lang;
            _textController.text = _value.getValueByLanguage(_language);
            setState(() {});
          },
          value: _language,
        ),
      ],
    );
  }
}

class LanguageSwitcherMenu extends StatelessWidget {
  const LanguageSwitcherMenu({
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
