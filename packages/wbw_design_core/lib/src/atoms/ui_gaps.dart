import '../../wbw_design_core.dart';

/// A utility class that defines common gap sizes for layout spacing.
///
/// This class provides static constants for various gap sizes to ensure
/// consistent spacing throughout the application.
///
/// Example usage:
/// ```dart
/// Padding(
///   padding: UiGaps.medium,
///   child: YourWidget(),
/// );
/// ```
class UiGaps {
  const UiGaps._();

  /// A small gap size.
  static const small = Gap(UiSpace.small);

  /// A medium gap size.
  static const medium = Gap(UiSpace.medium);

  /// A large gap size.
  static const large = Gap(UiSpace.large);

  /// An extra large gap size.
  static const extraLarge = Gap(UiSpace.extraLarge);
}
