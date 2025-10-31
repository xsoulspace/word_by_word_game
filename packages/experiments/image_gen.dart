// ignore_for_file: avoid_print

import 'dart:io';

import 'package:image/image.dart' as img;

Future<void> main() async {
  const int width = 256;
  const int height = 256;

  final img.Image image = img.Image(width: width, height: height);

  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      final int r = (x / width * 255).toInt();
      final int g = (y / height * 255).toInt();
      const int b = 128;
      image.setPixel(x, y, img.ColorRgb8(r, g, b));
    }
  }

  final List<int> png = img.encodePng(image);
  final File file = File('sample.png');
  await file.writeAsBytes(png);
  print('Image generated: ${file.path}');
}
