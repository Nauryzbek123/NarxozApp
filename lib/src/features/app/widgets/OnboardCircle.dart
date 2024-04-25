import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:narxoz_project/src/core/resources/app_colors.dart';
import 'package:narxoz_project/src/features/app/widgets/red_white_circle_painter.dart';

class OnboardCircle extends StatefulWidget {
  final double percentage;
  final Function() onTap;
  const OnboardCircle({
    required this.percentage,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  State<OnboardCircle> createState() => _OnboardCircleState();
}

class _OnboardCircleState extends State<OnboardCircle> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: 60,
        height: 60,
        child: CustomPaint(
          painter: RedWhiteCirclePainter(widget.percentage),
          child: Center(
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.redColor, // Inner circle background color
              ),
              child: Icon(
                Icons.arrow_forward_ios,
                color: AppColors.whiteColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
