import 'package:flutter/material.dart';

import '../../../core/resources/ManropeText.dart';
import '../../../core/resources/app_colors.dart';

class LessonsDayWidget extends StatelessWidget {
  final String leftText;
  final String rightText;

  const LessonsDayWidget({
    Key? key,
    required this.leftText,
    required this.rightText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 22),
          child: ManropeText(
            leftText,
            10,
            AppColors.NavItemGrey,
            FontWeight.bold,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: ManropeText(
            rightText,
            10,
            AppColors.NavItemGrey,
            FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
