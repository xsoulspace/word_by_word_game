import 'package:flutter/material.dart';

class Modals {
  Modals.of(this.context);
  final BuildContext context;

  Future<T?> show<T>(final WidgetBuilder builder) =>
      showDialog(context: context, builder: builder);
}
