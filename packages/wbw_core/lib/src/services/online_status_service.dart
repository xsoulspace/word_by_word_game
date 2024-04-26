import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:universal_io/io.dart';

class OnlineStatusService {
  OnlineStatusService() {
    unawaited(_checkConnection());
    // Schedule a new timer every 5 seconds to check the internet connection.
    _timer = Timer.periodic(
      const Duration(seconds: 5),
      (final _) async => _checkConnection(),
    );
  }

  bool _isConnected = true;
  bool get isConnected => _isConnected;

  Timer? _timer;

  Future<void> _checkConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      _isConnected = result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      _isConnected = false;
    }
  }

  T? onRequest<T>(final T Function() request) {
    try {
      return request();
      // ignore: avoid_catches_without_on_clauses
    } catch (e) {
      if (kDebugMode) print(e);
      _isConnected = false;
      return null;
    }
  }

  void dispose() {
    _timer?.cancel();
  }
}
