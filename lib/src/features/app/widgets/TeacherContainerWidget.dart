import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../core/resources/ManropeText.dart';
import '../../../core/resources/app_colors.dart';
import '../../../core/widgets/column_spacer.dart';
import '../../../core/widgets/horizontalLine.dart';
import '../../../core/widgets/row_spacer.dart';
import 'ButtonWidgetForNotification.dart';
import 'RateTeacherModal.dart';

class TeacherContainerWidget extends StatelessWidget {
  const TeacherContainerWidget({super.key});

  Widget build(BuildContext context) {
    return Container(
      width: 322,
      height: 135,
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
        children: [
          ColumnSpacer(1),
          Row(
            children: [
              RowSpacer(1),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: AppColors.blackColor,
                  border: Border.all(
                    color: Colors.grey.withOpacity(0), // Border color
                    width: 1, // Border width
                  ),
                ),
              ),
              RowSpacer(1),
              Container(
                width: 240,
                child: const Column(
                  children: [
                    ManropeText(
                      "Вам понравился работа тренера: Азамат Айталиев?",
                      12,
                      AppColors.blackColor,
                      FontWeight.w700,
                    ),
                    ColumnSpacer(0.4),
                    ManropeText(
                      "Пожалуйста, оцените тренер,чтобы мы могли делать ваши приложения еще лучше",
                      8,
                      AppColors.NavItemGrey,
                      FontWeight.normal,
                    ),
                  ],
                ),
              ),
            ],
          ),
          ColumnSpacer(1.4),
          HorizontalLine(
            width: 303,
            color: AppColors.greyLineColor,
          ),
          ColumnSpacer(0.5),
          Row(
            children: [
              RowSpacer(1),
              ButtonWidgetForNotification(
                color: AppColors.NavItemGrey.withOpacity(0.14),
                text: "Оставить",
                textColor: AppColors.NavItemGrey,
                width: 151,
              ),
              RowSpacer(0.5),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(DialogRoute<void>(
                      context: context,
                      builder: (BuildContext context) {
                        
                        return AlertDialog(
                          
                            backgroundColor: Colors.transparent,
                            content:  Container(
                              width: 400 , 
                              height: 420,
                              child: const RateTeacherModal()),
                            
                            );
                      }));
                },
                child: ButtonWidgetForNotification(
                  color: AppColors.redColor.withOpacity(0.16),
                  text: "Оценить",
                  textColor: AppColors.redColor,
                  width: 151,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
