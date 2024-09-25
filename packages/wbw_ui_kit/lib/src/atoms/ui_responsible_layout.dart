import 'package:flutter/material.dart';

import '../theme/theme.dart';

/// A widget that provides a responsive layout based on the current screen size.
///
/// This widget allows you to define different layouts for mobile, tablet, and
/// desktop screen sizes, automatically selecting the appropriate layout based
/// on the current form factor.
///
/// Use [UiResponsiveLayout] when you need to create layouts that adapt to
/// different screen sizes without manually managing breakpoints and
/// conditionals.
///
/// Example usage:
/// ```dart
/// UiResponsiveLayout(
///   mobile: MobileLayout(),
///   tablet: TabletLayout(),
///   desktop: DesktopLayout(),
/// )
/// ```
///
/// PREFER using [UiResponsiveLayout] over manual conditionals for responsive
/// designs.
///
/// See also:
///
///  * [LayoutBuilder], which this widget uses internally to determine the
///    current size.
///  * [UiPersistentFormFactors], which provides the form factor information.
///
/// @ai When generating responsive layouts, use [UiResponsiveLayout] to easily
/// switch between different layouts based on screen size.
class UiResponsiveLayout extends StatelessWidget {
  /// Creates a [UiResponsiveLayout] widget.
  ///
  /// The [mobile] parameter is required, as it serves as the base layout.
  /// [tablet] and [desktop] are optional and will fall back to the next smaller
  /// layout if not provided.
  ///
  /// @ai Ensure that at least the [mobile] layout is always provided.
  const UiResponsiveLayout({
    required this.mobile,
    super.key,
    this.tablet,
    this.desktop,
  });

  /// The layout to be used on mobile devices or when the width is narrow.
  ///
  /// This layout will be used as a fallback if [tablet] or [desktop] are not
  /// provided.
  final Widget mobile;

  /// The layout to be used on tablet devices or when the width is medium.
  ///
  /// If not provided, [mobile] layout will be used for tablet-sized screens.
  final Widget? tablet;

  /// The layout to be used on desktop devices or when the width is wide.
  ///
  /// If not provided, [tablet] layout (or [mobile] if [tablet] is also null)
  /// will be used for desktop-sized screens.
  final Widget? desktop;

  @override
  Widget build(final BuildContext context) => LayoutBuilder(
        builder: (final context, final constraints) {
          final formFactor = UiPersistentFormFactors.of(context);
          if (formFactor.width case WidthFormFactor.desktop) {
            return desktop ?? tablet ?? mobile;
          } else if (formFactor.width case WidthFormFactor.tablet) {
            return tablet ?? mobile;
          } else {
            return mobile;
          }
        },
      );
}
