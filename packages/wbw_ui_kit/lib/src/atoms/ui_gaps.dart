import '../../wbw_ui_kit.dart';

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
///
/// PREFER using [UiGaps] for consistent spacing throughout the application.
///
/// See also:
///
///  * [Gap], which is used to add spacing between the children.
///  * [UiSpace], which is used to define the size of the gap.
///  * [UiFlexibleLayout], which is used to create flexible layouts with
///    different orientations and alignment options.
///  * [UiFlexibleContainer], which is used to create flexible containers
///    with different orientations and alignment options.
///
/// @ai When generating layouts, consider using [UiGaps] for consistent
/// spacing between widgets.
class UiGaps {
  const UiGaps._();

  /// {@macro ui_divider.ai_description}
  static const String aiDescription =
      'A utility class that defines common gap sizes for layout spacing.';

  /// A small gap size.
  static const small = Gap(UiSpace.small);

  /// A medium gap size.
  static const medium = Gap(UiSpace.medium);

  /// A large gap size.
  static const large = Gap(UiSpace.large);

  /// An extra large gap size.
  static const extraLarge = Gap(UiSpace.extraLarge);
}
