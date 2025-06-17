import 'package:flutter/material.dart';

/// A customizable text input field widget.
///
/// This class provides a flexible way to create text input fields with various
/// customization options, including decoration, validation, and event handling.
///
/// ```dart
/// UiTextField(
///   value: notifier.value,
///   hintText: 'Enter text',
///   onChanged: (value) => print(value),
/// )
/// ```
///
/// @ai Use this widget to create text fields with specific behaviors and
/// styles. Ensure to provide a [controller] for managing the text input.
class UiTextField extends StatefulWidget {
  /// Creates a [UiTextField].
  ///
  /// The [controller] parameter is required for managing the text input. The
  /// [hintText] and [labelText] parameters provide user guidance. The
  /// [focusedBorder] parameter customizes the border when the field is focused.
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
  }) : focusedBorder = const UnderlineInputBorder(),
       decoration = null;

  /// The hint text displayed in the text field.
  final String? hintText;

  /// The label text displayed above the text field.
  final String? labelText;

  /// The border to display when the text field is focused.
  final InputBorder? focusedBorder;

  /// The controller for managing the text input.
  final TextEditingController? controller;

  /// Whether the text field obscures the text.
  final bool obscureText;

  /// The constraints for the text field.
  final BoxConstraints? constraints;

  /// A validator function for validating the input.
  final FormFieldValidator? validator;

  /// The decoration for the text field.
  final InputDecoration? decoration;

  /// A callback that is triggered when editing is complete.
  final VoidCallback? onEditingComplete;

  /// The initial value of the text field.
  final String? initialValue;

  /// A callback that is triggered when the field is submitted.
  final ValueChanged<String>? onFieldSubmitted;

  /// The focus node for the text field.
  final FocusNode? focusNode;

  /// A callback that is triggered when the input value changes.
  final ValueChanged<String>? onChanged;
  final String? value;

  /// The keyboard type for the text field.
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
      decoration:
          widget.decoration ??
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
