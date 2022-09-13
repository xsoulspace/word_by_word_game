import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flame/flame.dart';
import 'package:flutter/widgets.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(final BlocBase bloc, final Change change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
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

Future<void> bootstrap(final FutureOr<Widget> Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Flame.device.setLandscape();

  // FlutterError.onError = (final details) {
  //   log(details.exceptionAsString(), stackTrace: details.stack);
  // };
  Bloc.observer = AppBlocObserver();
  await runZonedGuarded(
    () async => runApp(await builder()),
    (final error, final stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
    },
  );
}
