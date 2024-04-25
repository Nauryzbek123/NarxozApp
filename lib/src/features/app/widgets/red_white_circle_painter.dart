import 'dart:math';
import 'package:flutter/material.dart';

class RedWhiteCirclePainter extends CustomPainter {
  final double borderPercentage;

  RedWhiteCirclePainter(this.borderPercentage);

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.white // Set default color to white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    final double radius = size.width / 2;

    // Draw white circle
    canvas.drawCircle(Offset(radius, radius), radius - 1, paint);

    // Draw red arcs to simulate border color
    paint.color = Colors.red;
    double startAngle = -pi / 2;
    double sweepAngle = 2 * pi * borderPercentage;

    canvas.drawArc(
      Rect.fromCircle(center: Offset(radius, radius), radius: radius - 1),
      startAngle,
      sweepAngle,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

