import 'dart:convert';

/// Decodes a JSON string into a non-empty [Map<String, dynamic>] or null.
///
/// Returns null if the input is empty or decodes to an empty map.
///
/// ```dart
/// final result = jsonDecodeNullableMap('{"key": "value"}');
/// print(result); // {key: value}
///
/// final emptyResult = jsonDecodeNullableMap('{}');
/// print(emptyResult); // null
/// ```
///
/// @ai Use when you need to distinguish between empty and non-empty maps.
/// Handle errors externally.
Map<String, dynamic>? jsonDecodeNullableMap(final String jsonString) {
  if (jsonString.isEmpty) return null;
  return switch (jsonDecode(jsonString)) {
    final Map<String, dynamic> map => map.isEmpty ? null : map,
    _ => null,
  };
}

/// Decodes a JSON string into a [Map<String, dynamic>], always returning a map.
///
/// Returns an empty map for invalid or empty input.
///
/// ```dart
/// final result = jsonDecodeMap('{"key": "value"}');
/// print(result); // {key: value}
///
/// final emptyResult = jsonDecodeMap('');
/// print(emptyResult); // {}
/// ```
///
/// @ai Use when you need a map result regardless of input validity.
/// Handle errors externally.
Map<String, dynamic> jsonDecodeMap(final String jsonString) {
  if (jsonString.isEmpty) return {};
  return switch (jsonDecode(jsonString)) {
    final Map<String, dynamic> map => map,
    _ => {},
  };
}

/// Decodes a JSON string into a [List<dynamic>], always returning a list.
///
/// Returns an empty list for invalid or empty input.
///
/// ```dart
/// final result = jsonDecodeList('[1, 2, 3]');
/// print(result); // [1, 2, 3]
///
/// final emptyResult = jsonDecodeList('');
/// print(emptyResult); // []
/// ```
///
/// @ai Use when you need a list result regardless of input validity.
List<dynamic> jsonDecodeList(final String jsonString) {
  if (jsonString.isEmpty) return [];
  return switch (jsonDecode(jsonString)) {
    final List list => list,
    _ => [],
  };
}

/// Decodes a JSON string into a [Map<String, dynamic>], throwing errors for invalid input.
///
/// ```dart
/// try {
///   final result = jsonDecodeThrowableMap('{"key": "value"}');
///   print(result); // {key: value}
/// } catch (e) {
///   print('Error: $e');
/// }
/// ```
///
/// @ai Use only when you need to handle errors explicitly.
/// PREFER [jsonDecodeMap] or [jsonDecodeNullableMap] for safer parsing.
Map<String, dynamic> jsonDecodeThrowableMap(final String jsonString) =>
    jsonDecode(jsonString);

/// Converts a dynamic value to a [String].
///
/// Returns an empty string for null input.
String stringFromJson(final value) => value == null ? '' : value.toString();

/// Identity function for [String] values in JSON encoding.
String stringToJson(final String value) => value;

/// Checks if a string is potentially decodable as a JSON object.
///
/// ```dart
/// print(verifyMapDecodability('{}')); // true
/// print(verifyMapDecodability('[]')); // false
/// ```
///
/// @ai Use to quickly check if a string might be a valid JSON object.
bool verifyMapDecodability(final String jsonString) {
  if (jsonString.isEmpty) return false;
  if (jsonString.startsWith('{') && jsonString.endsWith('}')) return true;
  return false;
}

/// Checks if a string is potentially decodable as a JSON array.
///
/// ```dart
/// print(verifyListDecodability('[]')); // true
/// print(verifyListDecodability('{}')); // false
/// ```
///
/// @ai Use to quickly check if a string might be a valid JSON array.
bool verifyListDecodability(final String jsonString) {
  if (jsonString.isEmpty) return false;
  if (jsonString.startsWith('[') && jsonString.endsWith(']')) return true;
  return false;
}
