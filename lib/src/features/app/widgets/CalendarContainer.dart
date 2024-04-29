import 'package:flutter/material.dart';
import 'package:narxoz_project/src/core/widgets/column_spacer.dart';

import '../../../core/resources/ManropeText.dart';
import '../../../core/resources/app_colors.dart';

class CalendarContainer extends StatelessWidget {
  final Color borderColor;

  const CalendarContainer({Key? key, required this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 42,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(2),
        border: Border.all(
          color: borderColor, // Border color
          width: 1, // Border width
        ),
      ),
      child: Center(
        child: Column(
          children: [
            ColumnSpacer(0.2),
            ManropeText(
              "Ср",
              12,
              AppColors.blackColor,
              FontWeight.normal,
            ),
            ManropeText(
              "7",
              12,
              AppColors.blackColor,
              FontWeight.normal,
            ),
          ],
        ),
      ),
    );
  }
}
