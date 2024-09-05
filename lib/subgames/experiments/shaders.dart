import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void runShaderApp(final List<String> args) {
  runApp(const ShadersExample());
}

class ShadersExample extends StatelessWidget {
  const ShadersExample({super.key});

  Future<ui.FragmentProgram> _loadShader() async =>
      ui.FragmentProgram.fromAsset('assets/shaders/fragment_shader.frag');

  @override
  Widget build(final BuildContext context) => FutureBuilder<ui.FragmentProgram>(
        // ignore: discarded_futures
        future: _loadShader(),
        builder: (final context, final snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          return ShaderWidget(fragmentProgram: snapshot.data!);
        },
      );
}

class ShaderWidget extends StatefulWidget {
  const ShaderWidget({required this.fragmentProgram, super.key});
  final ui.FragmentProgram fragmentProgram;

  @override
  _ShaderWidgetState createState() => _ShaderWidgetState();
}

class _ShaderWidgetState extends State<ShaderWidget> {
  late ui.FragmentShader _shader;
  late ui.ImageShader _imageShader;
  late ui.Paint _paint;
  late ui.Image _image;
  double _time = 0;

  @override
  void initState() {
    super.initState();
    _shader = widget.fragmentProgram.fragmentShader();
    _paint = ui.Paint()..shader = _shader;
    unawaited(_loadImage());
    _startAnimation();
  }

  Future<void> _loadImage() async {
    final image = await _loadImageFromAsset('assets/sample.png');
    setState(() {
      _image = image;
      _imageShader = ui.ImageShader(
        _image,
        ui.TileMode.clamp,
        ui.TileMode.clamp,
        Float64List.fromList([1, 0, 0, 0, 1, 0, 0, 0, 1]),
      );
    });
  }

  Future<ui.Image> _loadImageFromAsset(final String asset) async {
    final data = await rootBundle.load(asset);
    final codec = await ui.instantiateImageCodec(data.buffer.asUint8List());
    final frame = await codec.getNextFrame();
    return frame.image;
  }

  void _startAnimation() {
    Timer.periodic(const Duration(milliseconds: 16), (final timer) {
      setState(() {
        _time += 0.016;
        _shader.setFloat(0, _time);
      });
    });
  }

  @override
  Widget build(final BuildContext context) => CustomPaint(
        painter: ShaderPainter(_paint),
        child: Container(),
      );
}

class ShaderPainter extends CustomPainter {
  ShaderPainter(this.paintObj);
  final ui.Paint paintObj;

  @override
  void paint(final Canvas canvas, final Size size) {
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paintObj);
  }

  @override
  bool shouldRepaint(covariant final CustomPainter oldDelegate) => true;
}
