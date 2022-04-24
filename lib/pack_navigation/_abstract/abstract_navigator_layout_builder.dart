part of pack_navigation;

abstract class AbstractNavigatorLayoutBuilder<
    TBuilder extends AbstractNavigatorPageBuilder,
    TPopper extends AbstractNavigatorPopper> {
  TBuilder get pageBuilder;
  TPopper get popper;
  List<Page<dynamic>> getLargeScreenPages();
  List<Page<dynamic>> getMediumScreenPages();
  List<Page<dynamic>> getSmallScreenPages();
}

extension AbstractNavigatorLayoutBuilderExtension
    on AbstractNavigatorLayoutBuilder {
  String get pathTemplate => popper.pathTemplate;
}
