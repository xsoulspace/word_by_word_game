import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:word_by_word_game/pack_core/app/app_services_provider.dart';
import 'package:word_by_word_game/pack_core/pack_core.dart';

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

Future<void> bootstrap(
  final Widget Function({
    required AppServicesProviderDiDto servicesDiDto,
  })
      builder,
) async {
  WidgetsFlutterBinding.ensureInitialized();
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  final firebaseIntializer = FirebaseInitializer();
  await firebaseIntializer.onLoad();

  // await Flame.device.fullScreen();

  final analyticsNotifier = AnalyticsNotifier();
  await analyticsNotifier.onLoad();
  Bloc.observer = AppBlocObserver();
  final servicesDiDto = AppServicesProviderDiDto(
    analyticsNotifier: analyticsNotifier,
  );
  runZonedGuarded(
    () => runApp(builder(servicesDiDto: servicesDiDto)),
    analyticsNotifier.recordError,
  );
}
