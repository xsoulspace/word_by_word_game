// lib/src/widgets/export_button.dart
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pixel_art_creator/src/providers/pixel_provider.dart';
import 'package:provider/provider.dart';

class ExportButton extends StatelessWidget {
  const ExportButton({super.key});

  @override
  Widget build(final BuildContext context) => ElevatedButton(
        onPressed: () async {
          final code = context.read<PixelProvider>().exportAsCustomPainter();
          unawaited(Clipboard.setData(ClipboardData(text: code)));
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Exported as CustomPainter!')),
          );
        },
        child: const Text('Export'),
      );
}
