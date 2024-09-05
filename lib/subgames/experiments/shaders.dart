import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void runShaderApp(final List<String> args) {
  runApp(const ShadersExample());
}

class ShadersExample extends StatefulWidget {
  const ShadersExample({super.key});

  @override
  _ShadersExampleState createState() => _ShadersExampleState();
}

class _ShadersExampleState extends State<ShadersExample> {
  ui.FragmentShader? _shader;
  ui.Paint? _paint;
  double _time = 0;

  @override
  void initState() {
    super.initState();
    unawaited(_loadShader());
  }

  Future<void> _loadShader() async {
    try {
      final fragmentProgram = await ui.FragmentProgram.fromAsset(
        'assets/shaders/fragment_shader.frag',
      );
      final image = await _loadImage(
        'assets/shaders_assets/sample.png',
      ); // Load your texture
      final shader = fragmentProgram.fragmentShader();
      shader.setImageSampler(0, image); // Set the texture sampler
      setState(() {
        _shader = shader;
        _paint = ui.Paint()..shader = _shader;
      });
      _startAnimation();
    } catch (e) {
      print(e);
      // Handle error
    }
  }

  Future<ui.Image> _loadImage(final String asset) async {
    final data = await rootBundle.load(asset);
    final codec = await ui.instantiateImageCodec(data.buffer.asUint8List());
    final frame = await codec.getNextFrame();
    return frame.image;
  }

  Timer? _timer;

  void _startAnimation() {
    _timer = Timer.periodic(const Duration(milliseconds: 16), (final timer) {
      setState(() {
        _time += 0.016;
        _shader?.setFloat(0, _time);
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) => _paint == null
      ? const Center(child: CircularProgressIndicator())
      : Center(
          child: SizedBox.square(
            dimension: 200,
            child: CustomPaint(
              painter: ShaderPainter(_paint!),
              child: Container(),
            ),
          ),
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
