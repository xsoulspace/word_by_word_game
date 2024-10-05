import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:wbw_client/wbw_client.dart';
import 'package:xsoulspace_foundation/xsoulspace_foundation.dart';

class AppServerpodClient implements Disposable {
  AppServerpodClient({
    required this.url,
  });
  final String url;
  // Sets up a singleton client object that can be used to talk to the server
  // from anywhere in our app. The client is generated from your server code.
  // The client is set up to connect to a Serverpod running on a local server on
  // the default port. You will need to modify this to connect to staging or
  // production servers.
  late final _client = Client(url.whenEmptyUse('http://$localhost:8100/'))
    ..connectivityMonitor = FlutterConnectivityMonitor();

  EndpointWord get word => _client.word;

  @override
  void dispose() => _client.close();
}
