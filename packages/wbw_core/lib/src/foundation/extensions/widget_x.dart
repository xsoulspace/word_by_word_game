import 'package:flutter/widgets.dart';

extension WidgetX on Widget {
  Widget toSliver() => SliverToBoxAdapter(child: this);
}
