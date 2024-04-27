import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:universal_io/io.dart';

import 'online_status_service_i.dart';

class OnlineStatusService extends BaseOnlineStatusService {
  OnlineStatusService(super.context) {
    unawaited(_checkConnection());
    // Schedule a new timer every 5 seconds to check the internet connection.
    _timer = Timer.periodic(
      const Duration(seconds: 5),
      (final _) async => _checkConnection(),
    );
  }

  Timer? _timer;
  static const _siteCheckUrl = 'xsoulspace.dev';

  Future<void> _checkConnection() async {
    try {
      final result = await InternetAddress.lookup(_siteCheckUrl);
      isConnected = result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      isConnected = false;
      // ignore: avoid_catches_without_on_clauses
    } catch (e, st) {
      if (kDebugMode) print([e, st]);
      isConnected = false;
    }
  }

  @override
  T onRequest<T>(
    final ValueGetter<T> request, {
    required final T negativeResponse,
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

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
