import 'dart:js_interop';

import 'package:web/web.dart' as web;

import 'online_status_service_i.dart';

class OnlineStatusService extends BaseOnlineStatusService {
  OnlineStatusService(super.context) {
    isConnected = web.window.navigator.onLine;
    _startListening();
  }

  void _startListening() => web.window
    ..addEventListener('online', _onOnline.toJS)
    ..addEventListener('offline', _onOffline.toJS);

  void _onOnline([final web.Event? _]) => isConnected = true;
  void _onOffline([final web.Event? _]) => isConnected = true;

  @override
  void dispose() {
    web.window
      ..removeEventListener('online', _onOnline.toJS)
      ..removeEventListener('offline', _onOffline.toJS);
    super.dispose();
  }
}
