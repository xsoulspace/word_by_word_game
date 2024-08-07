/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'word_language.dart' as _i2;
import 'word_model.dart' as _i3;
import 'word_request.dart' as _i4;
export 'word_language.dart';
export 'word_model.dart';
export 'word_request.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i2.WordLanguage) {
      return _i2.WordLanguage.fromJson(data) as T;
    }
    if (t == _i3.WordModel) {
      return _i3.WordModel.fromJson(data) as T;
    }
    if (t == _i4.WordRequest) {
      return _i4.WordRequest.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.WordLanguage?>()) {
      return (data != null ? _i2.WordLanguage.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.WordModel?>()) {
      return (data != null ? _i3.WordModel.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.WordRequest?>()) {
      return (data != null ? _i4.WordRequest.fromJson(data) : null) as T;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i2.WordLanguage) {
      return 'WordLanguage';
    }
    if (data is _i3.WordModel) {
      return 'WordModel';
    }
    if (data is _i4.WordRequest) {
      return 'WordRequest';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'WordLanguage') {
      return deserialize<_i2.WordLanguage>(data['data']);
    }
    if (data['className'] == 'WordModel') {
      return deserialize<_i3.WordModel>(data['data']);
    }
    if (data['className'] == 'WordRequest') {
      return deserialize<_i4.WordRequest>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
