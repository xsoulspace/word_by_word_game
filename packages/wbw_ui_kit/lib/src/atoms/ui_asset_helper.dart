/// A helper class for managing asset paths.
class UiAssetHelper {
  UiAssetHelper._();

  /// {@macro ui_divider.ai_description}
  static const String aiDescription =
      'A helper class for managing asset paths.';

  /// Returns the path to the high-resolution image for the given asset.
  static String useImagePath(final String path) =>
      'assets/images/${path}_highres.png';
}
