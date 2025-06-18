import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/pack_core/global_states/global_services_initializer.dart';
import 'package:word_by_word_game/pack_core/word_by_word_app.dart';

class AppBlocObserver extends BlocObserver {
  AppBlocObserver({required this.analyticsService});
  final AnalyticsService analyticsService;
  @override
  // ignore: unnecessary_overrides
  void onChange(final BlocBase bloc, final Change change) {
    super.onChange(bloc, change);
    // analyticsService.dynamicInfoLog(
    //   'onChange(${bloc.runtimeType}, $change)',
    // );
  }

  @override
  void onError(
    final BlocBase bloc,
    final Object error,
    final StackTrace stackTrace,
  ) {
    // analyticsService.dynamicErrorLog(
    //   'onError(${bloc.runtimeType}, $error, $stackTrace)',
    // );
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap({final FirebaseOptions? firebaseOptions}) async {
  // await Flame.device.fullScreen();

  final GlobalServicesInitializer initializer = GlobalServicesInitializerImpl(
    firebaseOptions: firebaseOptions,
  );

  LocalizationConfig.initialize(
    LocalizationConfig(
      supportedLanguages: uiLanguages.all,
      fallbackLanguage: uiLanguages.en,
    ),
  );

  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    LicenseRegistry.addLicense(() async* {
      final license = await rootBundle.loadString('google_fonts/OFL.txt');
      yield LicenseEntryWithLineBreaks(['google_fonts'], license);
    });
    unawaited(initializer.onLoad());

    Bloc.observer = AppBlocObserver(
      analyticsService: initializer.analyticsService,
    );
    runApp(WordByWordApp(initializer: initializer));
  }, initializer.analyticsService.recordError);
}
