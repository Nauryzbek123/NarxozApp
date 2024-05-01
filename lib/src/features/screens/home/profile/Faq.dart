import 'package:flutter/material.dart';

import '../../../../core/resources/ManropeText.dart';
import '../../../../core/resources/app_colors.dart';
import '../../../../core/widgets/column_spacer.dart';
import '../../../../core/widgets/row_spacer.dart';
import '../../../app/widgets/GoBackCircleWidget.dart';

class Faq extends StatelessWidget {
  const Faq({super.key});

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
                  RowSpacer(10),
                  ManropeText(
                    "F.A.Q",
                    20,
                    AppColors.lightBlackColor,
                    FontWeight.w700,
                  ),
                ],
              ),
              
            ],
          ),
        ],
      ),
    )
    );
  }
}