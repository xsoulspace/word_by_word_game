import 'package:is_dart_empty_or_not/is_dart_empty_or_not.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:wbw_client/wbw_client.dart';
import 'package:xsoulspace_foundation/xsoulspace_foundation.dart';

/// {@template app_serverpod_client}
/// Serverpod client wrapper for the Word by Word game application.
///
/// Provides a singleton client instance that manages the connection to the
/// Serverpod backend and exposes word-related endpoints.
/// {@endtemplate}
class AppServerpodClient implements Disposable {
  /// {@macro app_serverpod_client}
  AppServerpodClient({required this.url});

  /// The server URL to connect to
  final String url;

  /// The underlying Serverpod client instance
  ///
  /// Sets up a singleton client object that can be used to talk to the server
  /// from anywhere in our app. The client is generated from your server code.
  /// The client is set up to connect to a Serverpod running on a local server on
  /// the default port. You will need to modify this to connect to staging or
  /// production servers.
  late final _client = Client(url.whenEmptyUse('http://$localhost:8100/'))
    ..connectivityMonitor = FlutterConnectivityMonitor();

  /// Access to word-related endpoints
  EndpointWord get word => _client.word;

  @override
  void dispose() => _client.close();
}
