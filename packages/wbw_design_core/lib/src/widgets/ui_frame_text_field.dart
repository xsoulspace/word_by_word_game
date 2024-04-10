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
    super.key,
  });
  final TextEditingController controller;
  final String hintText;
  final VoidCallback? onEnterPressed;
  final VoidCallback? onSubmitted;
  final FocusNode keyFocusNode;
  final FocusNode? textFieldFocusNode;

  @override
  Widget build(final BuildContext context) {
    const height = 34.0;
    const width = 88.0;
    final theme = Theme.of(context);
    return KeyboardListener(
      focusNode: keyFocusNode,
      onKeyEvent: (final value) {
        if (value.logicalKey == LogicalKeyboardKey.enter) {
          onEnterPressed?.call();
        }
      },
      child: Stack(
        children: [
          const UiFrame(
            asset: UiFrameAsset.text_field,
            height: height,
            width: width,
          ),
          Positioned(
            top: 0,
            left: 0,
            width: width,
            bottom: 0,
            child: Column(
              children: [
                const Spacer(),
                TextField(
                  focusNode: textFieldFocusNode,
                  onSubmitted: (final _) => onSubmitted?.call(),
                  onEditingComplete: () {},
                  style: theme.textTheme.bodyMedium,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                    counter: const SizedBox(),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 4,
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
