import 'package:flutter/material.dart';
import 'package:map_editor/ui/renderer/renderer_widget.dart';
import 'package:map_editor/ui/sandbox/sandbox_ui_overlay.dart';

class SandboxScreen extends StatelessWidget {
  const SandboxScreen({super.key});

  @override
  Widget build(final BuildContext context) => const Scaffold(
    body: Stack(
      fit: StackFit.expand,
      children: [GameRendererWidget(), SandboxUiOverlay()],
    ),
  );
}
