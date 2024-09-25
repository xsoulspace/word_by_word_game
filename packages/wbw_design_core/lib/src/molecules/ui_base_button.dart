// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// TODO(arenukvern): refactor to use inside UiStyledButton as a
// gesture, actions and focus handlers container.

/// Please do not include unneccessary graphics to this continaier.
///
/// Its purpose just give pressed animation and callback, that's all
/// For other purposes use / build other widgets
class UiBaseButton extends StatefulWidget {
  const UiBaseButton({
    required this.child,
    this.onPressed,
    this.onLongPress,
    super.key,
    this.padding,
    this.pressedOpacity = 0.4,
    this.alignment = Alignment.center,
    this.tooltipMessage,
    this.onShowHoverHighlight,
    this.backgroundColor,
    this.foregroundColor,
    this.borderRadius,
  });

  final Widget child;
  final ValueChanged<bool>? onShowHoverHighlight;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onPressed;
  final String? tooltipMessage;
  final VoidCallback? onLongPress;
  final double? pressedOpacity;
  final AlignmentGeometry alignment;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final BorderRadius? borderRadius;

  bool get enabled => onPressed != null;

  @override
  State<UiBaseButton> createState() => _UiBaseButtonState();

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(FlagProperty('enabled', value: enabled, ifFalse: 'disabled'));
  }
}

class _UiBaseButtonState extends State<UiBaseButton>
    with SingleTickerProviderStateMixin {
  // Eyeballed values. Feel free to tweak.
  static const Duration kFadeOutDuration = Duration(milliseconds: 120);
  static const Duration kFadeInDuration = Duration(milliseconds: 180);
  final Tween<double> _opacityTween = Tween<double>(begin: 1);

  late AnimationController _animationController;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      value: 0,
      vsync: this,
    );
    _opacityAnimation = _animationController
        .drive(CurveTween(curve: Curves.decelerate))
        .drive(_opacityTween);
    _setTween();
  }

  @override
  void didUpdateWidget(final UiBaseButton old) {
    super.didUpdateWidget(old);
    _setTween();
  }

  void _setTween() {
    _opacityTween.end = widget.pressedOpacity ?? 1.0;
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  bool _buttonHeldDown = false;

  Future<void> _handleTapDown(final TapDownDetails event) async {
    if (!_buttonHeldDown) {
      _buttonHeldDown = true;
      await _animate();
    }
  }

  Future<void> _handleTapUp(final TapUpDetails event) async {
    if (_buttonHeldDown) {
      _buttonHeldDown = false;
      await _animate();
    }
  }

  Future<void> _handleTapCancel() async {
    if (_buttonHeldDown) {
      _buttonHeldDown = false;
      await _animate();
    }
  }

  Future<void> _animate() async {
    if (_animationController.isAnimating) {
      return;
    }
    final bool wasHeldDown = _buttonHeldDown;
    final TickerFuture ticker = _buttonHeldDown
        ? _animationController.animateTo(
            1,
            duration: kFadeOutDuration,
            curve: Curves.easeInOutCubicEmphasized,
          )
        : _animationController.animateTo(
            0,
            duration: kFadeInDuration,
            curve: Curves.easeOutCubic,
          );
    await ticker.then<void>((final value) {
      if (mounted && wasHeldDown != _buttonHeldDown) {
        _animate();
      }
    });
  }

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);
    final backgroundColor = widget.backgroundColor ?? theme.colorScheme.surface;
    final foregroundColor =
        widget.foregroundColor ?? theme.colorScheme.onSurface;

    final child = AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: widget.borderRadius ?? BorderRadius.circular(8),
      ),
      padding: widget.padding ?? const EdgeInsets.all(12),
      child: DefaultTextStyle(
        style: TextStyle(color: foregroundColor),
        child: IconTheme(
          data: IconThemeData(color: foregroundColor),
          child: widget.child,
        ),
      ),
    );

    final bool enabled = widget.enabled;

    final FocusableActionDetector focusableActionDetector =
        FocusableActionDetector(
      onShowHoverHighlight: widget.onShowHoverHighlight,
      mouseCursor: enabled ? SystemMouseCursors.click : MouseCursor.defer,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTapDown: enabled ? _handleTapDown : null,
        onTapUp: enabled ? _handleTapUp : null,
        onTapCancel: enabled ? _handleTapCancel : null,
        onTap: widget.onPressed,
        onLongPress: widget.onLongPress,
        child: Semantics(
          button: true,
          child: FadeTransition(
            opacity: _opacityAnimation,
            child: child,
          ),
        ),
      ),
    );
    if (widget.tooltipMessage != null) {
      return Tooltip(
        message: widget.tooltipMessage,
        child: focusableActionDetector,
      );
    } else {
      return focusableActionDetector;
    }
  }
}
