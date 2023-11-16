import 'package:firebase_core/firebase_core.dart';
import 'package:life_hooks/life_hooks.dart';

import '../services/services.dart';

abstract class GlobalControllersInitializer implements Loadable {
  AnalyticsService get analyticsService;
}

class GlobalControllersInitializerImpl extends GlobalControllersInitializer {
  GlobalControllersInitializerImpl({
    this.firebaseOptions,
  });
  @override
  late final AnalyticsService analyticsService;
  final FirebaseOptions? firebaseOptions;
  @override
  Future<void> onLoad() async {
    final effectiveFirebaseOptions = firebaseOptions;
    if (effectiveFirebaseOptions != null) {
      await FirebaseInitializerImpl(firebaseOptions: effectiveFirebaseOptions)
          .onLoad();
      analyticsService = AnalyticsServiceImpl(
        plugins: {
          FirebaseAnalyticsPlugin: FirebaseAnalyticsPlugin(),
          FirebaseCrashlyticsPlugin: FirebaseCrashlyticsPlugin(),
        },
      );
    }
    await analyticsService.onLoad();
  }
}
