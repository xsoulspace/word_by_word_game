import 'package:flutter/material.dart';

import '../theme/color_palette.dart';

class GameMenuButton extends StatelessWidget {
  const GameMenuButton({
    required this.label,
    required this.icon,
    required this.onPressed,
    this.decorationPainter = const UiFilledButtonPainter(),
    super.key,
  });
  final String label;
  final IconData icon;
  final VoidCallback onPressed;
  final CustomPainter decorationPainter;

  @override
  Widget build(final BuildContext context) => GestureDetector(
        onTap: onPressed,
        child: CustomPaint(
          painter: decorationPainter,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(icon, color: AppColors.textPrimary),
                const SizedBox(width: 8),
                Text(
                  label,
                  style: const TextStyle(
                    color: AppColors.textPrimary,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}

class UiFilledButtonPainter extends CustomPainter {
  const UiFilledButtonPainter();
  @override
  void paint(final Canvas canvas, final Size size) {
    final paint = Paint()
      ..color = AppColors.buttonPrimary
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(10, 0)
      ..lineTo(size.width - 10, 0)
      ..quadraticBezierTo(size.width, 0, size.width, 10)
      ..lineTo(size.width, size.height - 10)
      ..quadraticBezierTo(size.width, size.height, size.width - 10, size.height)
      ..lineTo(10, size.height)
      ..quadraticBezierTo(0, size.height, 0, size.height - 10)
      ..lineTo(0, 10)
      ..quadraticBezierTo(0, 0, 10, 0)
      ..close();

    canvas.drawPath(path, paint);

    // Add subtle shadow
    final shadowPaint = Paint()
      ..color = AppColors.shadow
      ..style = PaintingStyle.fill;

    final shadowPath = Path()
      ..moveTo(10, size.height)
      ..lineTo(size.width - 10, size.height)
      ..quadraticBezierTo(size.width, size.height, size.width, size.height + 10)
      ..lineTo(0, size.height + 10)
      ..quadraticBezierTo(0, size.height, 10, size.height)
      ..close();

    canvas.drawPath(shadowPath, shadowPaint);
  }

  @override
  bool shouldRepaint(covariant final CustomPainter oldDelegate) => false;
}
