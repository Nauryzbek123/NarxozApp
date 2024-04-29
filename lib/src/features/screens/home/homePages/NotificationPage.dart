import 'package:flutter/material.dart';
import 'package:narxoz_project/src/core/widgets/column_spacer.dart';
import 'package:narxoz_project/src/core/widgets/row_spacer.dart';

import '../../../../core/resources/ManropeText.dart';
import '../../../../core/resources/app_colors.dart';
import '../../../../core/widgets/horizontalLine.dart';
import '../../../app/widgets/ButtonWidgetForNotification.dart';
import '../../../app/widgets/GoBackCircleWidget.dart';
import '../../../app/widgets/NotificationNewsContainer.dart';
import '../../../app/widgets/TeacherContainerWidget.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

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
                    "Уведомления",
                    20,
                    AppColors.lightBlackColor,
                    FontWeight.w700,
                  ),
                ],
              ),
              ColumnSpacer(4),
              TeacherContainerWidget(), 
              ColumnSpacer(2),
              NotificationNewsContainer(), 
              ColumnSpacer(2), 
              NotificationNewsContainer()
            ],
          ),
        ],
      ),
    ));
  }
}
