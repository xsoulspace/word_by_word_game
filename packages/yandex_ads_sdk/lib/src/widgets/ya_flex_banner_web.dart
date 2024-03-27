// copied from https://github.com/nathanael540/admanager_web/blob/main/lib/src/adblock.dart
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'dart:ui_web';

// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
// import 'package:pointer_interceptor/src/shim/dart_ui.dart' as ui;

/// A widget that displays an Ad from AdManager in a Flutter Web app
///
/// This widget will create one [SizedBox] with the size of the ad and will
/// display the ad inside it using the GPT.js library from Google
class YandexFlexiblePlatformBanner extends StatelessWidget {
  /// The constructor for our widget
  YandexFlexiblePlatformBanner({
    required this.adUnitId,
    this.height = 100,
    this.width = 320,
    super.key,
  }) {
    /// We create a DivElement to hold our ad ;)
    platformViewRegistry.registerViewFactory(renderTo, (final viewId) {
      final rootDiv = html.DivElement();
      final scriptDiv = html.ScriptElement();
      final div = html.DivElement()..id = renderTo;
      // TODO(arenukvern): Allow more sizes, like responsive ads ["fluid"]

      div.style.width = '${width}px';
      div.style.height = '${height}px';
      scriptDiv.innerHtml = '''
        window.yaContextCb.push(() => {
          Ya.Context.AdvManager.render({
            blockId: "$adUnitId",
            renderTo: "$renderTo",
            onError: (data) => {
              console.error(data); 
            },
          });
        });
      ''';
      rootDiv.children.add(div);
      rootDiv.children.add(scriptDiv);

      // TODO(arenukvern): Add a eventListener to check if the ad was loaded

      return rootDiv;
    });
  }
  String get renderTo => 'yandex_rtb_$adUnitId';

  /// The size that will be used to request the ad
  final double height;

  /// The size that will be used to request the ad
  final double width;

  /// The ad code
  final String? adUnitId;

  @override
  Widget build(final BuildContext context) =>

      /// We create a SizedBox with the size of the ad
      SizedBox(
        height: height,
        width: width,
        child: HtmlElementView(
          viewType: renderTo,
        ),
      );
}
