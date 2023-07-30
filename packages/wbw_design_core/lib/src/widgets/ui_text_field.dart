import 'package:flutter/material.dart';

class UiTextField extends StatefulWidget {
  const UiTextField({
    required this.controller,
    this.hintText,
    this.labelText,
    this.focusedBorder,
    this.obscureText = false,
    this.constraints,
    this.onEditingComplete,
    this.value,
    this.onChanged,
    this.keyboardType,
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
    this.keyboardType,
    this.obscureText = false,
    this.initialValue,
    this.constraints,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.validator,
    this.focusNode,
    this.decoration,
    this.value,
    this.hintText,
    super.key,
  });
  const UiTextField.underlined({
    this.controller,
    this.constraints,
    this.hintText,
    this.labelText,
    this.value,
    this.initialValue,
    this.onChanged,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.keyboardType,
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
  final String? value;
  final TextInputType? keyboardType;

  @override
  State<UiTextField> createState() => _UiTextFieldState();
}

class _UiTextFieldState extends State<UiTextField> {
  late final TextEditingController _controller =
      widget.controller ?? TextEditingController(text: widget.value);
  @override
  void didUpdateWidget(covariant final UiTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    WidgetsBinding.instance.addPostFrameCallback((final _) {
      if (widget.controller != null) return;
      if (widget.value != _controller.text) {
        _controller.text = widget.value ?? '';
      }
    });
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) {
    Widget child = TextFormField(
      focusNode: widget.focusNode,
      initialValue: widget.initialValue,
      keyboardType: widget.keyboardType,
      onChanged: widget.onChanged,
      obscureText: widget.obscureText,
      validator: widget.validator,
      onEditingComplete: widget.onEditingComplete,
      onFieldSubmitted: widget.onFieldSubmitted,
      decoration: widget.decoration ??
          InputDecoration(
            hintText: widget.hintText,
            labelText: widget.labelText,
            focusedBorder: widget.focusedBorder,
          ),
      controller: _controller,
    );

    if (widget.constraints != null) {
      child = ConstrainedBox(constraints: widget.constraints!, child: child);
    }

    return child;
  }
}
