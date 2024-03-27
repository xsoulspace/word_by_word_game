import 'package:flutter/foundation.dart';

class DeviceRuntimeType {
  DeviceRuntimeType._();
  static const _desktopPlatforms = [
    TargetPlatform.macOS,
    TargetPlatform.windows,
    TargetPlatform.linux,
  ];
  static const _mobilePlatforms = [TargetPlatform.android, TargetPlatform.iOS];
  static bool get isDesktop =>
      _desktopPlatforms.contains(defaultTargetPlatform);
  static bool get isNativeDesktop => isDesktop && !kIsWeb;
  static bool get isNativeWebDesktop => isDesktop && kIsWeb;
  static bool get isNativeMobile => isMobile && !kIsWeb;
  static bool get isNativeWebMobile => isMobile && kIsWeb;
  static bool get isMobile => _mobilePlatforms.contains(defaultTargetPlatform);

  static bool get isWindows => defaultTargetPlatform == TargetPlatform.windows;
  static bool get isLinux => defaultTargetPlatform == TargetPlatform.linux;
  static bool get isMacOS => defaultTargetPlatform == TargetPlatform.macOS;
  static bool get isAndroid => defaultTargetPlatform == TargetPlatform.android;
  static bool get isIOS => defaultTargetPlatform == TargetPlatform.iOS;
  static bool get isFuchsia => defaultTargetPlatform == TargetPlatform.fuchsia;
  static bool get isWeb => kIsWeb;
  static bool get isNative => !isWeb;
  static bool get isTransparentBackgroundSupported => isMacOS;
  static bool get isCupertino => isIOS || isMacOS;
}
