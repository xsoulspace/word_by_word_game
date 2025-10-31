import 'dart:async';

import 'package:flutter/material.dart';

class EasyIn extends StatefulWidget {
  const EasyIn({required this.child, super.key});
  final Widget child;

  @override
  State<EasyIn> createState() => _EasyInState();
}

/// State class, where the magic happens
class _EasyInState extends State<EasyIn> with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;
  static const _kDebugAnimation = false;
  @override
  void initState() {
    super.initState();
    initController();
  }

  void initController() {
    final controller = AnimationController(
      duration: const Duration(milliseconds: 1100),
      vsync: this,
    );
    final curve = CurvedAnimation(
      parent: controller,
      curve: Curves.easeInOutSine,
    );
    _animation = Tween<double>(begin: 0, end: 20).animate(curve)
      ..addStatusListener((final status) async {
        if (!mounted) return;
        if (status == AnimationStatus.completed) {
          await controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          await Future.delayed(const Duration(milliseconds: 170));
          await controller.forward();
        }
      });

    _controller = controller;
    unawaited(controller.forward());
  }

  void disposeController() {
    _controller?.dispose();
  }

  @override
  void dispose() {
    disposeController();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) {
    final controller = _controller;
    final animation = _animation;
    if (controller == null || animation == null) return widget.child;

    final child = AnimatedBuilder(
      animation: controller,
      builder: (final context, final child) => Transform.translate(
        offset: Offset(0, -15 + animation.value),
        child: widget.child,
      ),
    );

    if (_kDebugAnimation) {
      return Stack(
        children: [
          TextButton(
            onPressed: () {
              disposeController();
              initController();
              setState(() {});
            },
            child: const Text('Restart'),
          ),
          child,
        ],
      );
    } else {
      return child;
    }
  }
}
