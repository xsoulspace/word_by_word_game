import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../providers/pixel_provider.dart';

class ToolPalette extends StatelessWidget {
  const ToolPalette({super.key});

  @override
  Widget build(final BuildContext context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ToolButton(
                  tool: Tool.pixel,
                  icon: Icons.blur_circular,
                  label: 'Pixel',
                ),
                const SizedBox(width: 10),
                ToolButton(
                  tool: Tool.line,
                  icon: Icons.show_chart,
                  label: 'Line',
                ),
                const SizedBox(width: 10),
                ToolButton(
                  tool: Tool.border,
                  icon: Icons.border_style,
                  label: 'Border',
                ),
                const SizedBox(width: 10),
                ToolButton(
                  tool: Tool.eraser,
                  icon: Icons.backspace,
                  label: 'Eraser',
                ),
                const SizedBox(width: 20),
                const Text('Grid Size:'),
                const SizedBox(width: 10),
                SizedBox(
                  width: 100,
                  child: Consumer<PixelProvider>(
                    builder: (context, provider, child) => TextFormField(
                      initialValue: provider.gridSize.toString(),
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      onChanged: (value) {
                        final size = int.tryParse(value);
                        if (size != null && size > 0) {
                          provider.setGridSize(size);
                        }
                      },
                      decoration: const InputDecoration(
                        hintText: 'e.g., 16',
                        suffixText: 'px',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () => context.read<PixelProvider>().clearPixels(),
              child: const Text('Clear'),
            ),
          ],
        ),
      );
}

class ToolButton extends StatelessWidget {
  final Tool tool;
  final IconData icon;
  final String label;

  const ToolButton({
    required this.tool,
    required this.icon,
    required this.label,
    super.key,
  });

  @override
  Widget build(final BuildContext context) {
    final provider = context.watch<PixelProvider>();
    final isSelected = provider.currentTool == tool;

    return ElevatedButton.icon(
      onPressed: () => provider.setTool(tool),
      icon: Icon(icon, color: isSelected ? Colors.white : Colors.black),
      label: Text(
        label,
        style: TextStyle(color: isSelected ? Colors.white : Colors.black),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected ? Colors.blue : Colors.grey[300],
      ),
    );
  }
}
