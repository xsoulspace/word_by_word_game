/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

enum WordLanguage implements _i1.SerializableModel {
  eng,
  ru;

  static WordLanguage fromJson(String name) {
    switch (name) {
      case 'eng':
        return eng;
      case 'ru':
        return ru;
      default:
        throw ArgumentError(
            'Value "$name" cannot be converted to "WordLanguage"');
    }
  }

  @override
  String toJson() => name;
  @override
  String toString() => name;
}
