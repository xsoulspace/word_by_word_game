import 'package:flutter/material.dart';

class UiCheckboxListTile extends StatelessWidget {
  const UiCheckboxListTile({
    required this.onChanged,
    required this.value,
    this.title,
    super.key,
  });

  final bool value;
  final ValueChanged<bool?> onChanged;
  final Widget? title;

  @override
  Widget build(final BuildContext context) => CheckboxListTile(
        value: value,
        onChanged: onChanged,
        title: title,
      );
}
