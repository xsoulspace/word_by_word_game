class AppConstraints {
  static final double smWidth = 300.0;
  static final double mlWidth = 500.0;
  static bool isMobile(double size) {
    return size < AppConstraints.smWidth;
  }

  static bool isMedium(double size) {
    return size >= AppConstraints.smWidth && size <= AppConstraints.mlWidth;
  }
}
