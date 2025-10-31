import 'package:get_it/get_it.dart';
import 'package:word_by_word_game/common_imports.dart';
import 'package:word_by_word_game/pack_core/ads/states/states.dart';

/// Shortcuts
/// Should not be exposed
final _getIt = GetIt.instance;

/// get instance of a service
final _g = _getIt.get;

class Di {
  Di._();
  static const init = _init;
  static const dispose = _dispose;
  static T get<T extends Object>() => _getIt.get<T>();
}

void _dispose() => unawaited(_getIt.reset());

Future<void> _init() async {
  await _getIt.reset();
  final r = _getIt.registerSingleton;
  final rl = _getIt.registerLazySingleton;
  FutureOr<dynamic> d<T>(final T instance) {
    if (instance is ChangeNotifier) {
      instance.dispose();
    } else {
      assert(false, 'Not implemented');
    }
  }

  /// ********************************************
  /// *      Layer 1: Infrastructure Services
  /// ********************************************

  rl<LocalDbI>(PrefsDb.new);

  // Analytics Service (from initializer)
  // Will be registered by GlobalServicesInitializer

  // Ad Manager
  rl<AdManager>(AdManager.new, dispose: d);

  /// ********************************************
  /// *      Layer 2: Data Sources & Repositories
  /// ********************************************

  // WbwDictionary - will be registered after dependencies are available
  // rl<WbwDictionary>(() => WbwDictionary(simpleLocal: _g(), repository: ...), dispose: d);

  // Repositories will be registered after LocalDbI is available

  /// ********************************************
  /// *      Layer 3: Runtime Resources (No Dependencies)
  /// ********************************************

  /// ********************************************
  /// *      Layer 4: Commands & Controllers
  /// ********************************************

  /// ********************************************
  /// *      RESOURCES
  /// ********************************************

  /// ********************************************
  /// *      Notifiers
  /// ********************************************
  final localeNotifier = UiLocaleResource(Locales.fallback);
  r(localeNotifier, dispose: d);
}

mixin HasLocalApis {
  LocalDbI get localDb => _g();
}

/// Resources cannot access any Notifiers directly.
/// They have simple mission - to distribute and store runtime data
/// for ui access.
mixin HasResources {
  UiLocaleResource get uiLocaleResource => _g();
}

/// These states should not be used in each other,
/// but they can access Distributors via [HasResources]
///
/// States can and should have business logic, but should minimize
/// state usage to make ui management more effective.
mixin HasNotifiers {
  UiLocaleResource get localeNotifier => _g();
  AppSettingsNotifier get appSettingsNotifier => _g();
}

mixin HasAnalytics {
  AnalyticsService get analyticsService => _g();
}

mixin HasComplexLocalDbs {}
