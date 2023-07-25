import 'package:flutter/material.dart';
import 'package:wbw_core/wbw_core.dart';

import 'ui_text_field.dart';

class UiLocalizedTextField extends StatefulWidget {
  const UiLocalizedTextField({
    required this.fieldConstraints,
    required this.initialValue,
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
    required this.initialValue,
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
  final LocalizedMap initialValue;
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
    text: widget.initialValue.getValue(),
  );
  late LocalizedMap _value = widget.initialValue;
  Languages _language = Languages.en;

  @override
  void initState() {
    _language = LocalizedMap.getCurrentLanugage();
    super.initState();
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
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
        MenuAnchor(
          menuChildren: Languages.values
              .map(
                (final lang) => MenuItemButton(
                  child: Text(lang.name),
                  onPressed: () {
                    _language = lang;
                    _textController.text = _value.getValue(_language);
                    setState(() {});
                  },
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
            child: Text(_language.name),
          ),
        ),
      ],
    );
  }
}
