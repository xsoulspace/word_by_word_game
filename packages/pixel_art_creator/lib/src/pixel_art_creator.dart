import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/pixel_provider.dart';
import 'widgets/dimension_field.dart';
import 'widgets/export_button.dart';
import 'widgets/pixel_canvas.dart';
import 'widgets/tool_palette.dart';

class PixelArtCreator extends StatefulWidget {
  const PixelArtCreator({super.key});

  @override
  _PixelArtCreatorState createState() => _PixelArtCreatorState();
}

class _PixelArtCreatorState extends State<PixelArtCreator> {
  @override
  Widget build(final BuildContext context) {
    final pixelProvider = Provider.of<PixelProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Pixel Art Creator')),
      body: Column(
        children: [
          ToolPalette(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DimensionField(
                label: 'Columns',
                initialValue: pixelProvider.columns,
                onChanged: (value) => pixelProvider.setColumns(value),
              ),
              const SizedBox(width: 20),
              DimensionField(
                label: 'Rows',
                initialValue: pixelProvider.rows,
                onChanged: (value) => pixelProvider.setRows(value),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            width: pixelProvider.canvasWidth,
            height: pixelProvider.canvasHeight,
            child: PixelCanvas(
                canvasSize: Size(
                    pixelProvider.canvasWidth, pixelProvider.canvasHeight)),
          ),
          ExportButton(),
        ],
      ),
    );
  }
}
