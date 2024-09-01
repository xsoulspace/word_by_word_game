import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

extension StringX on String {
  Color toColor() {
    final hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// To invoke a callback when this is a non-empty value.
  void onNotEmpty(final void Function(String value) callback) =>
      isEmpty ? null : callback(this);

  /// Use this function to set "default value", which will be used, if
  /// [this.isEmpty]
  String whenEmptyUse(final String value) => isEmpty ? value : this;

  bool get isUrl {
    const uriSchemes = ['http', 'https'];
    final uri = Uri.tryParse(this);

    return uriSchemes.contains(uri?.scheme);
  }

  @useResult
  String? getNullable() => isEmpty ? null : this;
  static final _whitespaceCleanerRegExp = RegExp(r'\s+');
  @useResult
  String clearWhitespaces() => replaceAll(_whitespaceCleanerRegExp, ' ');
}
