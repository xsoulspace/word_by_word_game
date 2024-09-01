/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;

abstract class WordModel implements _i1.SerializableModel {
  WordModel._({
    this.id,
    required this.language,
    required this.word,
    required this.meaning,
  });

  factory WordModel({
    int? id,
    required _i2.WordLanguage language,
    required String word,
    required String meaning,
  }) = _WordModelImpl;

  factory WordModel.fromJson(Map<String, dynamic> jsonSerialization) {
    return WordModel(
      id: jsonSerialization['id'] as int?,
      language:
          _i2.WordLanguage.fromJson((jsonSerialization['language'] as String)),
      word: jsonSerialization['word'] as String,
      meaning: jsonSerialization['meaning'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  _i2.WordLanguage language;

  String word;

  String meaning;

  WordModel copyWith({
    int? id,
    _i2.WordLanguage? language,
    String? word,
    String? meaning,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'language': language.toJson(),
      'word': word,
      'meaning': meaning,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _WordModelImpl extends WordModel {
  _WordModelImpl({
    int? id,
    required _i2.WordLanguage language,
    required String word,
    required String meaning,
  }) : super._(
          id: id,
          language: language,
          word: word,
          meaning: meaning,
        );

  @override
  WordModel copyWith({
    Object? id = _Undefined,
    _i2.WordLanguage? language,
    String? word,
    String? meaning,
  }) {
    return WordModel(
      id: id is int? ? id : this.id,
      language: language ?? this.language,
      word: word ?? this.word,
      meaning: meaning ?? this.meaning,
    );
  }
}
