import 'dart:math';

import 'package:flutter/material.dart';

import '../resources/app_colors.dart';

class OrangeGreyCirclePainter extends CustomPainter {
  final double percentage;

  OrangeGreyCirclePainter(this.percentage);

  @override
  void paint(Canvas canvas, Size size) {
    final double radius = size.width / 2;
    final Paint orangePaint = Paint()
      ..color = AppColors.OrangeText
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    final Paint greyPaint = Paint()
      ..color = AppColors.greyLineColor
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    final Offset center = Offset(radius, radius);

    canvas.drawCircle(center, radius, greyPaint);

    final double arcAngle = 2 * pi * percentage;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -pi / 2,
      arcAngle,
      false,
      orangePaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
