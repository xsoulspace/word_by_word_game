import 'package:flutter/material.dart';

class Dialogs {
  Dialogs.of(this.context);
  final BuildContext context;
  Future<bool?> showDeleteDialog({required final Widget title}) async =>
      showDialog<bool>(
        context: context,
        builder: (final context) => AlertDialog(
          content: title,
          actions: [
            TextButton(
              child: const Text('Cancel'),
              onPressed: () => Navigator.pop(context, false),
            ),
            TextButton(
              child: const Text('Delete'),
              onPressed: () => Navigator.pop(context, true),
            ),
          ],
        ),
      );
}
