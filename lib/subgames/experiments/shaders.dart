import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_shaders/flutter_shaders.dart';

void runShaderApp(final List<String> args) {
  runApp(const _App());
}

const dimension = 300.0;

class _App extends StatelessWidget {
  const _App({super.key});

  @override
  Widget build(final BuildContext context) => const Center(
        child: SizedBox.square(
          dimension: dimension,
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
  Offset _mousePosition = Offset.zero;

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
  double get newWidth => dimension;
  double get newHeight => dimension;

  void _startAnimation() {
    _timer = Timer.periodic(const Duration(milliseconds: 16), (final timer) {
      _updateShader();
    });
  }

  void _updateShader() {
    _time += 0.016;
    _shader?.setFloatUniforms(
      (final setter) => setter
        ..setFloat(_time)
        ..setOffset(Offset(newWidth, newHeight))
        ..setOffset(Offset(_mousePosition.dx, _mousePosition.dy)),
    );
    setState(() {});
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) => _paint == null
      ? const CircularProgressIndicator()
      : MouseRegion(
          onHover: (final event) {
            setState(() {
              _mousePosition = event.localPosition;
            });
          },
          child: CustomPaint(
            painter: ShaderPainter(_paint!),
            child: Container(),
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
