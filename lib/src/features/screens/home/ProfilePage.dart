import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:narxoz_project/src/core/widgets/row_spacer.dart';
import 'package:narxoz_project/src/features/app/router/router.gr.dart';

import '../../../core/resources/ManropeText.dart';
import '../../../core/resources/app_colors.dart';
import '../../../core/widgets/column_spacer.dart';
import '../../../core/widgets/horizontalLine.dart';
import '../../app/widgets/ProfileOrangeCircleWidget.dart';
import '../../app/widgets/SettingsCircle.dart';
import '../../app/widgets/red_white_circle_painter.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: GestureDetector(
                      onTap: () => AutoRouter.of(context).push(const Settings()),
                      child: SvgPicture.asset('assets/svg/settingsIc.svg')),
                  )
                ],
              ),
              SettingsCircle(),
              ColumnSpacer(8),
              OrangeGreyCircleWidget(
                percentage: 0.7, // 70% of the border will be orange
                mainText: "9/12",
                subText: "еще 3 необходимы для зачета",
              ),
              ColumnSpacer(3),
              HorizontalLine(
                width: 343,
                color: AppColors.greyLineColor,
              ),
              ColumnSpacer(2),
              GestureDetector(
                 onTap: () => AutoRouter.of(context).push(const ProfileMyLessons()),
                child: RowProfile("assets/svg/myOrders.svg", "Мои Занятии")),
              ColumnSpacer(2),
              GestureDetector(
                 onTap: () => AutoRouter.of(context).push(const Status()),
                child: RowProfile("assets/svg/univ.svg", "Статус")),
              ColumnSpacer(2),
              GestureDetector(
                 onTap: () => AutoRouter.of(context).push(const Faq()),
                child: RowProfile("assets/svg/ques.svg", "Вопросы и ответы")),
              ColumnSpacer(3),
              HorizontalLine(
                width: 343,
                color: AppColors.greyLineColor,
              ),
            ],
          ),
        ],
      ),
    ));
  }
}

Widget RowProfile(String assets, String text1) {
  return Container(
    width: 342,
    height: 40,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.asset(assets),
            RowSpacer(2),
            ManropeText(
              text1,
              14,
              AppColors.ProfileBlackColor,
              FontWeight.normal,
            ),
          ],
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: AppColors.navGray,
          size: 20,
        )
      ],
    ),
  );
}
