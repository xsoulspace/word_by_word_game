import 'dart:async';

import 'package:serverpod/serverpod.dart';
import 'package:wbw_server/src/future_calls/seed_future_call.dart';
import 'package:wbw_server/src/web/routes/root.dart';

import 'src/generated/endpoints.dart';
import 'src/generated/protocol.dart';

// This is the starting point of your Serverpod server. In most cases, you will
// only need to make additions to this file if you add future calls,  are
// configuring Relic (Serverpod's web-server), or need custom setup work.

Future<void> run(List<String> args) async {
  // Initialize Serverpod and connect it with your generated code.
  final pod = Serverpod(
    args,
    Protocol(),
    Endpoints(),
  );

  // pod.registerFutureCall(ExampleFutureCall(), 'exampleFutureCall');

  // Setup a default page at the web root.
  pod.webServer.addRoute(RouteRoot(), '/');
  pod.webServer.addRoute(RouteRoot(), '/index.html');
  // Serve all files in the /static directory.
  pod.webServer.addRoute(
    RouteStaticDirectory(serverDirectory: 'static', basePath: '/'),
    '/*',
  );
  // Start the server.
  await pod.start();

  pod.registerFutureCall(SeedCall(), 'seedCall');
  await pod.futureCallWithDelay('seedCall', null, Duration(seconds: 1));
}
