import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

abstract class BaseOnlineStatusService extends ChangeNotifier {
  // ignore: avoid_unused_constructor_parameters
  BaseOnlineStatusService(final BuildContext context);

  bool _isConnected = false;

  bool get isConnected => _isConnected;

  set isConnected(final bool value) {
    _isConnected = value;
    if (kDebugMode) {
      print('network is ${value ? 'online' : 'offline'}');
    }
    notifyListeners();
  }

  Future<T> onRequest<T>(
    final AsyncValueGetter<T> request, {
    required final Future<T> negativeResponse,
  }) {
    try {
      return request();
      // ignore: avoid_catches_without_on_clauses
    } catch (e) {
      if (kDebugMode) print(e);
      isConnected = false;
      return negativeResponse;
    }
  }
}
