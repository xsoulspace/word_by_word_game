import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomSafeArea extends StatelessWidget {
  const BottomSafeArea({super.key});
  @override
  Widget build(final BuildContext context) {
    return const SafeArea(top: false, child: SizedBox(height: 1));
  }
}

class TopSafeArea extends StatelessWidget {
  const TopSafeArea({super.key});

  @override
  Widget build(final BuildContext context) {
    return const SafeArea(bottom: false, child: SizedBox(height: 1));
  }
}
