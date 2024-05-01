import 'package:flutter/material.dart';

import '../../../core/resources/ManropeText.dart';
import '../../../core/resources/app_colors.dart';
import '../../../core/widgets/OrangeGreyCirclePainter.dart';

class OrangeGreyCircleWidget extends StatelessWidget {
  final double percentage;
  final String mainText;
  final String subText;

  const OrangeGreyCircleWidget({
    required this.percentage,
    required this.mainText,
    required this.subText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: OrangeGreyCirclePainter(percentage),
      child: Container(
        width: 196,
        height: 196,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ManropeText(
                mainText,
                24,
                AppColors.OrangeText,
                FontWeight.normal,
              ),
              SizedBox(height: 8), // Adding some space between the texts
              Container(
                width: 120,
                height: 28,
                child: ManropeText(
                  subText,
                  10,
                  AppColors.silverColor,
                  FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
