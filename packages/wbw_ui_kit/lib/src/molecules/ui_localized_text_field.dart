import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wbw_locale/wbw_locale.dart';

import 'ui_language_switcher_menu.dart';
import 'ui_text_field.dart';

/// A widget that provides a localized text input field with language switching.
///
/// This class allows users to input text in different languages, with the
/// ability to switch between languages dynamically. It integrates with the
/// localization framework to provide a seamless user experience.
///
/// ```dart
/// UiLocalizedTextField(
///   value: LocalizedMap(),
///   onChanged: (value) => print(value),
///   fieldConstraints: BoxConstraints(maxWidth: 300),
/// )
/// ```
///
/// @ai Ensure that the [value] parameter is initialized with a valid
/// [LocalizedMap]. Use [onChanged] to handle changes in the input value.
class UiLocalizedTextField extends StatefulWidget {
  /// Creates a [UiLocalizedTextField].
  ///
  /// The [fieldConstraints] parameter defines the constraints for the text
  /// field. The [value] parameter holds the current localized value. The
  /// [onChanged] callback is triggered when the input value changes.
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

  /// The label text displayed above the text field.
  final String? labelText;

  /// A callback that is triggered when the input value changes.
  final ValueChanged<LocalizedMap> onChanged;

  /// The border to display when the text field is focused.
  final InputBorder? focusedBorder;

  /// The current localized value.
  final LocalizedMap value;

  /// Whether the text field obscures the text.
  final bool obscureText;

  /// The constraints for the text field.
  final BoxConstraints fieldConstraints;

  /// A validator function for validating the input.
  final FormFieldValidator? validator;

  /// A callback that is triggered when editing is complete.
  final VoidCallback? onEditingComplete;

  /// A callback that is triggered when the field is submitted.
  final ValueChanged<String>? onFieldSubmitted;

  /// The focus node for the text field.
  final FocusNode? focusNode;

  @override
  State<UiLocalizedTextField> createState() => _UiLocalizedTextFieldState();
}

class _UiLocalizedTextFieldState extends State<UiLocalizedTextField> {
  late final _textController = TextEditingController(
    text: widget.value.value.isEmpty ? null : widget.value.getValueByLanguage(),
  );
  late LocalizedMap _value = widget.value;
  late UiLanguage _language = context.read<UiLocaleResource>().value.language;

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant final UiLocalizedTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    final newText = widget.value.value.isEmpty
        ? ''
        : widget.value.getValueByLanguage();
    if (widget.value != _value || newText != _textController.text) {
      _value = widget.value;
      _textController.text = _value.value.isEmpty
          ? ''
          : _value.getValueByLanguage(_language);
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
        _value = _value.copyWith(value: {..._value.value}..[_language] = value);
        widget.onChanged(_value);
      },
      controller: _textController,
    );

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        child,
        UiLanguageSwitcherMenu(
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
