import 'package:flutter/material.dart';

class UiTextField extends StatelessWidget {
  const UiTextField({
    required this.controller,
    this.labelText,
    this.focusedBorder,
    this.obscureText = false,
    this.constraints,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.validator,
    this.focusNode,
    super.key,
  });
  const UiTextField.underlined({
    required this.controller,
    this.constraints,
    this.labelText,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.validator,
    this.focusNode,
    this.obscureText = false,
    super.key,
  }) : focusedBorder = const UnderlineInputBorder();

  final String? labelText;
  final InputBorder? focusedBorder;
  final TextEditingController controller;
  final bool obscureText;
  final BoxConstraints? constraints;
  final FormFieldValidator? validator;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onFieldSubmitted;
  final FocusNode? focusNode;

  @override
  Widget build(final BuildContext context) {
    Widget child = TextFormField(
      focusNode: focusNode,
      obscureText: obscureText,
      validator: validator,
      onEditingComplete: onEditingComplete,
      onFieldSubmitted: onFieldSubmitted,
      decoration: InputDecoration(
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
