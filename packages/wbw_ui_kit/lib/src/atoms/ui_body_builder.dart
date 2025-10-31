import 'package:flutter/material.dart';

/// A flexible widget for building body layouts with optional top
/// and bottom sections.
///
/// This widget provides a structured way to create body layouts that
/// can include a scrollable content area, along with optional top and bottom
/// widgets.
///
/// Use [UiBodyBuilder] when you need a consistent layout structure for screens
/// or large sections of your UI, especially when you want to combine
/// scrollable content with fixed-position elements.
///
/// Example usage:
/// ```dart
/// UiBodyBuilder(
///   top: AppBar(title: Text('My Screen')),
///   children: [
///     ListTile(title: Text('Item 1')),
///     ListTile(title: Text('Item 2')),
///     ListTile(title: Text('Item 3')),
///   ],
///   bottom: ElevatedButton(
///     onPressed: () {},
///     child: Text('Action'),
///   ),
/// )
/// ```
///
/// PREFER using [UiBodyBuilder] over manual [Column] and [ListView]
/// combinations for consistent body layouts across your application.
///
/// See also:
///
///  * [ListView], which this widget uses internally for scrollable content.
///  * [Column], which is used to structure the overall layout.
///
/// @ai When generating layouts, consider using [UiBodyBuilder] for screens
/// that require a scrollable body with optional header and footer elements.
class UiBodyBuilder extends StatelessWidget {
  /// Creates a [UiBodyBuilder] widget.
  ///
  /// Either [builder] or [children] must be provided, but not both.
  ///
  /// @ai Ensure that either [builder] or [children] is used, not both.
  const UiBodyBuilder({
    this.builder,
    this.children,
    this.top,
    this.bottom,
    this.padding,
    super.key,
  }) : assert(
         (builder == null) != (children == null),
         'Either builder or children must be provided, but not both.',
       );

  /// {@macro ui_divider.ai_description}
  static const String aiDescription =
      'A flexible widget for building body layouts with optional top '
      'and bottom sections.';

  /// Optional padding for the scrollable content area.
  ///
  /// @ai Consider the overall layout when setting this padding.
  final EdgeInsets? padding;

  /// A builder function for creating the body content.
  ///
  /// Use this for dynamic content generation.
  ///
  /// @ai Prefer [builder] for complex or dynamic body content.
  final WidgetBuilder? builder;

  /// A list of widgets to be displayed in the scrollable body area.
  ///
  /// Use this for static content.
  ///
  /// @ai Use [children] for simple, static lists of widgets.
  final List<Widget>? children;

  /// An optional widget to be displayed at the top of the layout.
  ///
  /// @ai Consider using this for headers, app bars, or other
  /// top-aligned content.
  final Widget? top;

  /// An optional widget to be displayed at the bottom of the layout.
  ///
  /// @ai Use this for footers, action buttons, or other bottom-aligned content.
  final Widget? bottom;

  @override
  Widget build(final BuildContext context) {
    final top = this.top;
    final bottom = this.bottom;
    final Widget child;
    if (builder != null) {
      child = Builder(builder: builder!);
    } else {
      final body = ListView(
        shrinkWrap: true,
        padding: padding,
        primary: true,
        children: children!,
      );
      child = Column(
        mainAxisSize: MainAxisSize.min,
        children: top != null || bottom != null
            ? [
                if (top != null) top,
                Expanded(child: body),
                if (bottom != null) bottom,
              ]
            : [body],
      );
    }
    return child;
  }
}
