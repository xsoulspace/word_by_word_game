import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/envs.dart';
import 'package:word_by_word_game/pack_core/app/app_di.dart';

class AppBlocObserver extends BlocObserver {
  AppBlocObserver({
    required this.analyticsService,
  });
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

Future<void> bootstrapGlobal(
  final Widget Function({required AppDiProviderDto servicesDto}) builder, {
  final FirebaseOptions? firebaseOptions,
}) async {
  // await Flame.device.fullScreen();

  final analyticsService = AnalyticsServiceImpl();

  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      LicenseRegistry.addLicense(() async* {
        final license = await rootBundle.loadString('google_fonts/OFL.txt');
        yield LicenseEntryWithLineBreaks(['google_fonts'], license);
      });
      final FirebaseInitializer? firebaseIntializer;
      if (Envs.isAnalyticsEnabled) {
        firebaseIntializer = FirebaseInitializerImpl(
          firebaseOptions: firebaseOptions,
        );
        await firebaseIntializer.onLoad();
        analyticsService.upsertPlugin(FirebaseAnalyticsPlugin());
        if (Envs.isCrashlyticsEnabled) {
          analyticsService.upsertPlugin(FirebaseCrashlyticsPlugin());
        }
      } else {
        firebaseIntializer = null;
      }
      await analyticsService.onLoad();
      Bloc.observer = AppBlocObserver(analyticsService: analyticsService);
      final servicesDto = AppDiProviderDto(
        analyticsService: analyticsService,
        firebaseInitializer: firebaseIntializer,
      );
      runApp(builder(servicesDto: servicesDto));
    },
    analyticsService.recordError,
  );
}
