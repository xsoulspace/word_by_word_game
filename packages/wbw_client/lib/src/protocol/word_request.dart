/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class WordRequest extends _i1.SerializableEntity {
  WordRequest._({
    required this.language,
    required this.word,
  });

  factory WordRequest({
    required String language,
    required String word,
  }) = _WordRequestImpl;

  factory WordRequest.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return WordRequest(
      language: serializationManager
          .deserialize<String>(jsonSerialization['language']),
      word: serializationManager.deserialize<String>(jsonSerialization['word']),
    );
  }

  String language;

  String word;

  WordRequest copyWith({
    String? language,
    String? word,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'language': language,
      'word': word,
    };
  }
}

class _WordRequestImpl extends WordRequest {
  _WordRequestImpl({
    required String language,
    required String word,
  }) : super._(
          language: language,
          word: word,
        );

  @override
  WordRequest copyWith({
    String? language,
    String? word,
  }) {
    return WordRequest(
      language: language ?? this.language,
      word: word ?? this.word,
    );
  }
}
