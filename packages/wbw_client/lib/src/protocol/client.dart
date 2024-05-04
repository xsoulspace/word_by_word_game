/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:wbw_client/src/protocol/word_request.dart' as _i3;
import 'protocol.dart' as _i4;

/// {@category Endpoint}
class EndpointWord extends _i1.EndpointRef {
  EndpointWord(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'word';

  _i2.Future<String> getWordMeaning(_i3.WordRequest wordRequest) =>
      caller.callServerEndpoint<String>(
        'word',
        'getWordMeaning',
        {'wordRequest': wordRequest},
      );

  _i2.Future<bool> checkWord(_i3.WordRequest wordRequest) =>
      caller.callServerEndpoint<bool>(
        'word',
        'checkWord',
        {'wordRequest': wordRequest},
      );
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
  }) : super(
          host,
          _i4.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
        ) {
    word = EndpointWord(this);
  }

  late final EndpointWord word;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {'word': word};

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
