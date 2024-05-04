/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;

abstract class WordRequest extends _i1.SerializableEntity {
  WordRequest._({
    required this.language,
    required this.word,
  });

  factory WordRequest({
    required _i2.WordLanguage language,
    required String word,
  }) = _WordRequestImpl;

  factory WordRequest.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return WordRequest(
      language: serializationManager
          .deserialize<_i2.WordLanguage>(jsonSerialization['language']),
      word: serializationManager.deserialize<String>(jsonSerialization['word']),
    );
  }

  _i2.WordLanguage language;

  String word;

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
  Map<String, dynamic> allToJson() {
    return {
      'language': language.toJson(),
      'word': word,
    };
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
