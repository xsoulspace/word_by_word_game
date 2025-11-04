import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum AppStatus { offline, online, loading }

class AppStatusNotifier extends ValueNotifier<AppStatus> {
  // ignore: avoid_unused_constructor_parameters
  AppStatusNotifier(final BuildContext context) : super(AppStatus.loading);
}
