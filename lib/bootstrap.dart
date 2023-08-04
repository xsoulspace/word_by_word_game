import 'dart:async';

import 'package:flutter/material.dart';
import 'package:word_by_word_game/bootstrap_global.dart';
import 'package:word_by_word_game/firebase_options.dart';
import 'package:word_by_word_game/pack_core/app/app_di.dart';

Future<void> bootstrap(
  final Widget Function({required AppDiProviderDto servicesDto}) builder,
) =>
    bootstrapGlobal(
      builder,
      firebaseOptions: DefaultFirebaseOptions.currentPlatform,
    );
