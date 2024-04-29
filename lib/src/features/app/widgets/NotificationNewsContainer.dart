import 'package:flutter/material.dart';

import '../../../core/resources/ManropeText.dart';
import '../../../core/resources/app_colors.dart';
import '../../../core/widgets/column_spacer.dart';
import '../../../core/widgets/horizontalLine.dart';
import '../../../core/widgets/row_spacer.dart';
import 'ButtonWidgetForNotification.dart';

class NotificationNewsContainer extends StatelessWidget {
  const NotificationNewsContainer({super.key});

  Widget build(BuildContext context) {
    return Container(
      width: 322,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12), // Border radius
        color: AppColors.whiteColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2), // Shadow color
            spreadRadius: 3, // Spread radius
            blurRadius: 5, // Blur radius
            offset: Offset(0, 2), // Shadow offset
          ),
        ],
        border: Border.all(
          color: Colors.grey.withOpacity(0), // Border color
          width: 1, // Border width
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 6.5, top: 7),
            child: Container(
              width: 306,
              height: 78,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), // Border radius
                color: AppColors.whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2), // Shadow color
                    spreadRadius: 3, // Spread radius
                    blurRadius: 5, // Blur radius
                    offset: Offset(0, 2), // Shadow offset
                  ),
                ],
                border: Border.all(
                  color: Colors.grey.withOpacity(0), // Border color
                  width: 1, // Border width
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 10),
            child: ManropeText(
              "Футзалдан поток ашылды! Тиркелип улгер",
              10,
              AppColors.blackColor,
              FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 2),
            child: ManropeText(
              "Пожалуйста, оцените занятии и тренер,чтобы мы могли делать ваши приложения еще лучше Пожалуйста, оцените занятии и тренер,чтобы мы могли делать ваши приложения еще лучше Пожалуйста, оцените занятии и тренер,чтобы мы могли делать ваши приложения еще лучше Пожалуйста, оцените занятии и тренер,чтобы мы могли делать ваши приложения еще лучше",
              8,
              AppColors.NavItemGrey,
              FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
