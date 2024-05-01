import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../core/resources/ManropeText.dart';
import '../../../../core/resources/app_colors.dart';
import '../../../../core/widgets/button_widget.dart';
import '../../../../core/widgets/column_spacer.dart';
import '../../../../core/widgets/horizontalLine.dart';
import '../../../../core/widgets/row_spacer.dart';
import '../../../app/widgets/GoBackCircleWidget.dart';
import '../ProfilePage.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
                  RowSpacer(8),
                  ManropeText(
                    "Настройки",
                    20,
                    AppColors.lightBlackColor,
                    FontWeight.w700,
                  ),
                ],
              ),
              ColumnSpacer(3),
              RowProfile("assets/svg/Translate.svg", "Язык Приложения"),
              ColumnSpacer(2),
              RowProfile("assets/svg/notOn.svg", "Настройки уведомлений"),
              ColumnSpacer(2),
              RowProfile("assets/svg/Key.svg", "Смена код доступа"),
              ColumnSpacer(3),
              HorizontalLine(
                width: 343,
                color: AppColors.silverColor,
              ),
              ColumnSpacer(10),
              Buttonwidget(
                  text: "Выйти",
                  onTap: () {
                    setState(() {});
                  },
                  containerColor: AppColors.redColor.withOpacity(0.16),
                  textColor: AppColors.redColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  width: 322,
                  height: 28,
                  circ: 3,
                  icon: 'assets/svg/LogOut.svg',
                  borderColor: AppColors.redColor,
                  borderWidth: 1,
                ),
            ],
          ),
        ],
      ),
    ));
  }
}
