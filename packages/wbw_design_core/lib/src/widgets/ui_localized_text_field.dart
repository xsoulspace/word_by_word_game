import 'package:flutter/material.dart';
import 'package:wbw_core/wbw_core.dart';

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
        LanguageSwitcher(
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

class LanguageSwitcher extends StatelessWidget {
  const LanguageSwitcher({
    required this.value,
    required this.onChanged,
    super.key,
  });
  final Languages value;
  final ValueChanged<Languages> onChanged;
  @override
  Widget build(final BuildContext context) => MenuAnchor(
        menuChildren: Languages.values
            .map(
              (final lang) => MenuItemButton(
                child: Text(lang.name),
                onPressed: () => onChanged(lang),
              ),
            )
            .toList(),
        builder: (final context, final controller, final child) => TextButton(
          onPressed: () {
            if (controller.isOpen) {
              controller.close();
            } else {
              controller.open();
            }
          },
          child: Text(value.name),
        ),
      );
}
