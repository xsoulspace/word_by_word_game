/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'word_language.dart' as _i2;

abstract class WordRequest
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  WordRequest._({
    required this.language,
    required this.word,
  });

  factory WordRequest({
    required _i2.WordLanguage language,
    required String word,
  }) = _WordRequestImpl;

  factory WordRequest.fromJson(Map<String, dynamic> jsonSerialization) {
    return WordRequest(
      language:
          _i2.WordLanguage.fromJson((jsonSerialization['language'] as String)),
      word: jsonSerialization['word'] as String,
    );
  }

  _i2.WordLanguage language;

  String word;

  /// Returns a shallow copy of this [WordRequest]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  WordRequest copyWith({
    _i2.WordLanguage? language,
    String? word,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'language': language.toJson(),
      'word': word,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      'language': language.toJson(),
      'word': word,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _WordRequestImpl extends WordRequest {
  _WordRequestImpl({
    required _i2.WordLanguage language,
    required String word,
  }) : super._(
          language: language,
          word: word,
        );

  /// Returns a shallow copy of this [WordRequest]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  WordRequest copyWith({
    _i2.WordLanguage? language,
    String? word,
  }) {
    return WordRequest(
      language: language ?? this.language,
      word: word ?? this.word,
    );
  }
}
