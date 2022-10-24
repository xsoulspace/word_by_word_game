import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:wbw_core/wbw_core.dart';

class AppBlocObserver extends BlocObserver {
  @override
  // ignore: unnecessary_overrides
  void onChange(final BlocBase bloc, final Change change) {
    super.onChange(bloc, change);
    // log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(
    final BlocBase bloc,
    final Object error,
    final StackTrace stackTrace,
  ) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(final Widget Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Flame.device.fullScreen();
  final analyticsService = AnalyticsService();
  await analyticsService.onLoad();
  Bloc.observer = AppBlocObserver();
  runZonedGuarded(
    () => runApp(builder()),
    analyticsService.recordError,
  );
}
