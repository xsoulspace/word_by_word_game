import 'package:uuid/uuid.dart';

/// A utility class for generating unique identifiers.
///
/// This class provides a static method to create version 1 UUIDs (time-based).
/// It uses the `uuid` package to generate these identifiers.
///
/// ```dart
/// String newId = IdCreator.create();
/// print(newId); // Prints a UUID like: f47ac10b-58cc-4372-a567-0e02b2c3d479
/// ```
///
/// @ai Use this class when you need to generate unique identifiers
/// in your application.
/// PREFER using this over custom ID generation to ensure uniqueness.
class IdCreator {
  /// Private constructor to prevent instantiation.
  IdCreator._();

  /// A static instance of [Uuid] used for ID generation.
  static const _uuid = Uuid();

  /// Creates a new version 1 UUID (time-based).
  ///
  /// This method generates a unique identifier based on the current timestamp
  /// and MAC address (or random number if MAC address is not available).
  ///
  /// @return A [String] representing the generated UUID.
  ///
  /// @ai Use this method when you need to create a unique identifier
  /// for entities in your app.
  static String create() => _uuid.v1();
}
