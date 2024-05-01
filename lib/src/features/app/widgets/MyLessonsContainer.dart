import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:narxoz_project/src/core/resources/app_colors.dart';
import 'package:narxoz_project/src/core/widgets/column_spacer.dart';
import 'package:narxoz_project/src/core/widgets/row_spacer.dart';

import '../../../core/resources/ManropeText.dart';

class MyLessonsContainer extends StatelessWidget {
  const MyLessonsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 322,
      height: 72,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9), // Circular border
        boxShadow: [
          BoxShadow(
            color: AppColors.NavItemGrey.withOpacity(0.1),
            spreadRadius: 1, // Spread radius of the shadow
            blurRadius: 0.2, // Blur radius of the shadow
            offset: Offset(0, 0), // Offset of the shadow
          ),
        ],
      ),
      child: Stack(
        children: [
          Row(
            children: [
              RowSpacer(1),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: AppColors.GreenColor,
                  borderRadius: BorderRadius.circular(9),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ColumnSpacer(1),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: ManropeText(
                      "Футбол FT-456",
                      10,
                      AppColors.regularBlacColor,
                      FontWeight.bold,
                    ),
                  ),
                  ColumnSpacer(0.5),
                  RowLesson('assets/svg/PlaceSmall.svg',
                      "02 апреля, 14:00, Азамат Мусагалиев"),
                  ColumnSpacer(0.5),
                  RowLesson('assets/svg/PlaceStad.svg', "Стадион Нархоз,Улк"),
                ],
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 8),
                  child: Container(
                    width: 52,
                    height: 16,
                    decoration: BoxDecoration(
                      color: AppColors.GreenColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center( 
                      child: ManropeText(
                      "успешно",
                      9,
                      AppColors.regularBlacColor,
                      FontWeight.bold,
                    ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

Widget RowLesson(String icon, String text) {
  return Row(
    children: [
      RowSpacer(1),
      SvgPicture.asset(icon),
      RowSpacer(0.4),
      ManropeText(
        text,
        8,
        AppColors.NavItemGrey,
        FontWeight.w700,
      ),
    ],
  );
}
