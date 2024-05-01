import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/resources/ManropeText.dart';
import '../../../../core/resources/app_colors.dart';
import '../../../../core/widgets/column_spacer.dart';
import '../../../../core/widgets/row_spacer.dart';
import '../../../app/widgets/ActiveOrHistoryLessonsButton.dart';
import '../../../app/widgets/GoBackCircleWidget.dart';

class ProfileMyLessons extends StatelessWidget {
  const ProfileMyLessons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: [
              ColumnSpacer(6),
              Row(
                children: [
                  RowSpacer(3),
                  GoBackCircleWidget(color: AppColors.greyLightColor),
                  RowSpacer(6),
                  ManropeText(
                    "Мои Занятии",
                    20,
                    AppColors.lightBlackColor,
                    FontWeight.w700,
                  ),
                  RowSpacer(8),
                  SvgPicture.asset('assets/svg/LesFilter.svg')
                ],
              ),

              ActiveOrHistoryButtonWidget()
              
            ],
          ),
        ],
      ),
    )
    );
  }
}
