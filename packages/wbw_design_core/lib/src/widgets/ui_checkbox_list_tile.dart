import 'package:flutter/material.dart';

class UiCheckboxListTile extends StatelessWidget {
  const UiCheckboxListTile({
    required this.onChanged,
    required this.value,
    this.title,
    final Key? key,
  }) : super(key: key);

  final bool value;
  final ValueChanged<bool?> onChanged;
  final Widget? title;

  @override
  Widget build(final BuildContext context) {
    return CheckboxListTile(
      value: value,
      onChanged: onChanged,
      title: title,
    );
  }
}
