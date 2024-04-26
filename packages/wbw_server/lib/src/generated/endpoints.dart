/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/words_endpoint.dart' as _i2;
import 'package:wbw_server/src/generated/word_request.dart' as _i3;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'word': _i2.WordEndpoint()
        ..initialize(
          server,
          'word',
          null,
        )
    };
    connectors['word'] = _i1.EndpointConnector(
      name: 'word',
      endpoint: endpoints['word']!,
      methodConnectors: {
        'getWordMeaning': _i1.MethodConnector(
          name: 'getWordMeaning',
          params: {
            'wordRequest': _i1.ParameterDescription(
              name: 'wordRequest',
              type: _i1.getType<_i3.WordRequest>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['word'] as _i2.WordEndpoint).getWordMeaning(
            session,
            params['wordRequest'],
          ),
        ),
        'checkWord': _i1.MethodConnector(
          name: 'checkWord',
          params: {
            'wordRequest': _i1.ParameterDescription(
              name: 'wordRequest',
              type: _i1.getType<_i3.WordRequest>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['word'] as _i2.WordEndpoint).checkWord(
            session,
            params['wordRequest'],
          ),
        ),
      },
    );
  }
}
