import 'package:flutter/material.dart';

class UiTextField extends StatelessWidget {
  const UiTextField({
    required this.controller,
    this.hintText,
    this.labelText,
    this.focusedBorder,
    this.obscureText = false,
    this.constraints,
    this.onEditingComplete,
    this.onChanged,
    this.onFieldSubmitted,
    this.validator,
    this.initialValue,
    this.focusNode,
    super.key,
  }) : decoration = null;
  const UiTextField.decorated({
    required this.controller,
    this.labelText,
    this.focusedBorder,
    this.onChanged,
    this.obscureText = false,
    this.initialValue,
    this.constraints,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.validator,
    this.focusNode,
    this.decoration,
    this.hintText,
    super.key,
  });
  const UiTextField.underlined({
    this.controller,
    this.constraints,
    this.hintText,
    this.labelText,
    this.initialValue,
    this.onChanged,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.validator,
    this.focusNode,
    this.obscureText = false,
    super.key,
  })  : focusedBorder = const UnderlineInputBorder(),
        decoration = null;

  final String? labelText;
  final InputBorder? focusedBorder;
  final TextEditingController? controller;
  final bool obscureText;
  final BoxConstraints? constraints;
  final FormFieldValidator? validator;
  final InputDecoration? decoration;
  final VoidCallback? onEditingComplete;
  final String? initialValue;
  final ValueChanged<String>? onFieldSubmitted;
  final FocusNode? focusNode;
  final ValueChanged<String>? onChanged;
  final String? hintText;
  @override
  Widget build(final BuildContext context) {
    Widget child = TextFormField(
      focusNode: focusNode,
      initialValue: initialValue,
      onChanged: onChanged,
      obscureText: obscureText,
      validator: validator,
      onEditingComplete: onEditingComplete,
      onFieldSubmitted: onFieldSubmitted,
      decoration: decoration ??
          InputDecoration(
            hintText: hintText,
            labelText: labelText,
            focusedBorder: focusedBorder,
          ),
      controller: controller,
    );

    if (constraints != null) {
      child = ConstrainedBox(constraints: constraints!, child: child);
    }

    return child;
  }
}
