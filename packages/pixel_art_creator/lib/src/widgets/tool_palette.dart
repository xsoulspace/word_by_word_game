import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/pixel_provider.dart';

class ToolPalette extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pixelProvider = Provider.of<PixelProvider>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildToolButton(context, Tool.pixel, Icons.brush),
        _buildToolButton(context, Tool.line, Icons.show_chart),
        _buildToolButton(context, Tool.border, Icons.border_style),
        _buildToolButton(context, Tool.eraser, Icons.auto_fix_high),
      ],
    );
  }

  Widget _buildToolButton(BuildContext context, Tool tool, IconData icon) {
    final pixelProvider = Provider.of<PixelProvider>(context);
    return IconButton(
      icon: Icon(icon),
      color: pixelProvider.currentTool == tool ? Colors.blue : Colors.black,
      onPressed: () => pixelProvider.setTool(tool),
    );
  }
}
