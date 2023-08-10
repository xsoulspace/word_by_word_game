part of '../theme.dart';

/// ********************************************
/// *      PERSISTENT FORM FACTORS
/// *
/// * These parameters depends only from device
/// * and cannot be changed.
/// ********************************************

@immutable
@Freezed(
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class UiPersistentFormFactors with _$UiPersistentFormFactors {
  const factory UiPersistentFormFactors({
    required final WidthFormFactor width,
    required final DeviceWindowFormFactor deviceWindow,
  }) = _UiPersistentFormFactors;
  const UiPersistentFormFactors._();
  factory UiPersistentFormFactors.of(final BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);

    return UiPersistentFormFactors(
      deviceWindow: _getDeviceWindow(),
      width: _getWidthBySize(screenSize),
    );
  }

  static DeviceWindowFormFactor _getDeviceWindow() {
    if (kIsWeb) {
      return DeviceWindowFormFactor.web;
    } else {
      switch (defaultTargetPlatform) {
        case TargetPlatform.macOS:
          return DeviceWindowFormFactor.macOS;
        case TargetPlatform.android:
          return DeviceWindowFormFactor.android;
        case TargetPlatform.iOS:
          return DeviceWindowFormFactor.iOS;
        case TargetPlatform.fuchsia:
          return DeviceWindowFormFactor.macOS;
        case TargetPlatform.windows:
          return DeviceWindowFormFactor.windows;
        case TargetPlatform.linux:
          return DeviceWindowFormFactor.linux;
      }
    }
  }

  static WidthFormFactor _getWidthBySize(final Size screenSize) {
    if (screenSize.width <= WidthFormFactor.mobile.max) {
      return WidthFormFactor.mobile;
    } else if (screenSize.width <= WidthFormFactor.tablet.max) {
      return WidthFormFactor.tablet;
    } else {
      return WidthFormFactor.desktop;
    }
  }
}

enum WidthFormFactor {
  xs(max: 375),
  mobile(
    max: 500,
  ),
  tablet(
    max: 1000,
  ),
  desktop(
    max: double.infinity,
  );

  const WidthFormFactor({
    required this.max,
  });
  final double max;
  static bool checkIsXs(final Size size) => size.width <= xs.max;
}

enum DeviceWindowFormFactor {
  android(
    hasWindowClose: false,
    hasWindowExpand: false,
    hasWindowHide: false,
  ),
  iOS(
    hasWindowClose: false,
    hasWindowExpand: false,
    hasWindowHide: false,
  ),
  macOS(),
  windows(),
  linux(),
  web(
    hasWindowClose: false,
    hasWindowExpand: false,
    hasWindowHide: false,
  );

  const DeviceWindowFormFactor({
    this.hasWindowClose = true,
    this.hasWindowExpand = true,
    this.hasWindowHide = true,
    // ignore: unused_element
    this.hasTransparencySupport = false,
  });
  final bool hasWindowClose;
  final bool hasWindowHide;
  final bool hasWindowExpand;
  final bool hasTransparencySupport;
}

/// ********************************************
/// *      CUSTOMIZABLE FORM FACTORS
/// *
/// * These parameters can be overriden by user
/// * and should be saved to user settings.
/// ********************************************

@immutable
@Freezed(
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class UiCustomizableFormFactors with _$UiCustomizableFormFactors {
  const factory UiCustomizableFormFactors({
    required final PerformanceFormFactor performance,
    required final ControlsFormFactor controls,
  }) = _UiCustomizableFormFactors;
  const UiCustomizableFormFactors._();
  factory UiCustomizableFormFactors.ofTargetPlatform() =>
      UiCustomizableFormFactors(
        performance: PerformanceFormFactor.regular,
        controls: _getControlsByTargetPlatform(),
      );

  static ControlsFormFactor _getControlsByTargetPlatform() {
    switch (defaultTargetPlatform) {
      case TargetPlatform.macOS:
        return ControlsFormFactor.mouse;
      case TargetPlatform.android:
        return ControlsFormFactor.touch;
      case TargetPlatform.iOS:
        return ControlsFormFactor.touch;
      case TargetPlatform.fuchsia:
        return ControlsFormFactor.touch;
      case TargetPlatform.windows:
        return ControlsFormFactor.mouse;
      case TargetPlatform.linux:
        return ControlsFormFactor.mouse;
    }
  }
}

enum ControlsFormFactor {
  touch,
  mouse;
}

enum PerformanceFormFactor {
  batterySaver(
    hasAnimations: false,
  ),
  regular();

  const PerformanceFormFactor({
    this.hasAnimations = true,
  });
  final bool hasAnimations;
}
