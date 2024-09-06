import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void runShaderApp(final List<String> args) {
  runApp(const _App());
}

class _App extends StatelessWidget {
  const _App({super.key});

  @override
  Widget build(final BuildContext context) => const Center(
        child: SizedBox.square(
          dimension: 200,
          child: _ShaderExp(),
        ),
      );
}

class _ShaderExp extends StatefulWidget {
  const _ShaderExp({super.key});

  @override
  _ShaderExpState createState() => _ShaderExpState();
}

class _ShaderExpState extends State<_ShaderExp> {
  ui.FragmentShader? _shader;
  ui.Paint? _paint;

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
      final shader = fragmentProgram.fragmentShader()
        ..setImageSampler(0, image); // Set the texture sampler
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
  double _time = 0;
  double get newWidth => 100;
  double get newHeight => 100;

  void _startAnimation() {
    _timer = Timer.periodic(const Duration(milliseconds: 16), (final timer) {
      _updateShader();
    });
  }

  void _updateShader() {
    _time += 0.016;
    _shader
      ?..setFloat(0, _time)
      ..setFloat(1, newWidth)
      ..setFloat(2, newHeight);
    setState(() {});
    print(
      'Updated shader values: time=$_time, width=$newWidth, height=$newHeight',
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) => _paint == null
      ? const CircularProgressIndicator()
      : CustomPaint(
          painter: ShaderPainter(_paint!),
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
