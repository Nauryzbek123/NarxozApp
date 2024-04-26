import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:narxoz_project/src/core/widgets/column_spacer.dart';
import 'package:narxoz_project/src/core/widgets/row_spacer.dart';

import '../../../core/resources/ManropeText.dart';
import '../../../core/resources/app_colors.dart';

class LessonsTimeWidget extends StatelessWidget {
  const LessonsTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63,
      child: Row(
        children: [
          RowSpacer(2.5),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: CircleAvatar(
              backgroundColor: Colors.greenAccent[400],
              radius: 20,
            ),
          ),
          RowSpacer(0.7),
          Container(
            width: 298,
            height: 63,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4), // Border radius
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Shadow color
                  spreadRadius: 2, // Spread radius
                  blurRadius: 4, // Blur radius
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
                ColumnSpacer(0.6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: ManropeText(
                        "Футбол FT-345",
                        11,
                        AppColors.boldBlackColor,
                        FontWeight.w700,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: ManropeText(
                        "8:00",
                        11,
                        AppColors.regularBlacColor,
                        FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: ManropeText(
                        "Бакытжан Сериков",
                        10,
                        AppColors.NavItemGrey,
                        FontWeight.normal,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: ManropeText(
                        "45 мин",
                        7,
                        AppColors.NavItemGrey,
                        FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                ColumnSpacer(0.6),
                Container(
                  height: 1.0,
                  width: 270,
                  color: AppColors.greyLineColor,
                ),
                ColumnSpacer(0.3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Container(
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/svg/UserIcon.svg'),
                            RowSpacer(0.5),
                            ManropeText(
                              "30 из 30",
                              8,
                              AppColors.NavItemGrey,
                              FontWeight.bold,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 7),
                      child: Container(
                        width: 48,
                        height: 14,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: AppColors.NavItemGrey.withOpacity(0.25),
                        ),
                        child: Center(
                          child: ManropeText(
                            "Мест нет",
                            6,
                            AppColors.NavItemGrey,
                            FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
