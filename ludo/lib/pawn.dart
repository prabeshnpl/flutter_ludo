import 'package:flutter/material.dart';

class LudoPawn extends StatelessWidget {
  final double size;
  final Color color;

  const LudoPawn({
    Key? key,
    required this.size,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size, size),
      painter: LudoPawnPainter(color: color),
    );
  }
}

class LudoPawnPainter extends CustomPainter {
  final Color color;

  LudoPawnPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final fillPaint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final borderPaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    final basePath = Path()
      ..moveTo(size.width / 2, size.height)
      ..lineTo(size.width * 0.3, size.height * 0.6)
      ..lineTo(size.width * 0.7, size.height * 0.6)
      ..close();

    final circlePath = Path()
      ..addOval(Rect.fromCircle(center: Offset(size.width / 2, size.height * 0.3), radius: size.width * 0.2));

    // Draw filled paths
    canvas.drawPath(basePath, fillPaint);
    canvas.drawPath(circlePath, fillPaint);

    // Draw borders
    canvas.drawPath(basePath, borderPaint);
    canvas.drawPath(circlePath, borderPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate is LudoPawnPainter && oldDelegate.color != color;
  }
}