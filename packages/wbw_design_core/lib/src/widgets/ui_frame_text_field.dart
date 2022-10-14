import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../wbw_design_core.dart';

class UiFrameTextField extends StatelessWidget {
  const UiFrameTextField({
    required this.controller,
    required this.hintText,
    required this.onSubmitted,
    required this.keyFocusNode,
    this.onEnterPressed,
    this.textFieldFocusNode,
    final Key? key,
  }) : super(key: key);
  final TextEditingController controller;
  final String hintText;
  final VoidCallback? onEnterPressed;
  final VoidCallback? onSubmitted;
  final FocusNode keyFocusNode;
  final FocusNode? textFieldFocusNode;

  @override
  Widget build(final BuildContext context) {
    const height = 34.0;
    return RawKeyboardListener(
      focusNode: keyFocusNode,
      onKey: (final event) {
        if (event.isKeyPressed(LogicalKeyboardKey.enter)) {
          onEnterPressed?.call();
        }
      },
      child: Stack(
        children: [
          const UiFrame(
            asset: UiFrameAsset.text_field,
            height: height,
            width: 88,
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  focusNode: textFieldFocusNode,
                  onSubmitted: (final _) => onSubmitted?.call(),
                  onEditingComplete: () {},
                  style: const TextStyle(fontSize: 14.0),
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.only(
                      left: 8,
                      right: 8,
                      top: 7,
                    ),
                    isDense: true,
                    hintText: hintText,
                  ),
                  controller: controller,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
