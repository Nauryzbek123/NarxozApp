import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:narxoz_project/src/features/screens/home/sections/SectionsDetailPage.dart';

import '../../../../core/resources/ManropeText.dart';
import '../../../../core/resources/app_colors.dart';
import '../../../../core/widgets/column_spacer.dart';
import '../../../../core/widgets/row_spacer.dart';
import '../../../app/widgets/DayliOrSectButton.dart';
import '../../../app/widgets/GoBackCircleWidget.dart';
import '../../../app/widgets/StudentsOrDetailsButton.dart';

class ShowLessonStudent extends StatefulWidget {
  const ShowLessonStudent({super.key});

  @override
  State<ShowLessonStudent> createState() => _ShowLessonStudentState();
}

class _ShowLessonStudentState extends State<ShowLessonStudent> {
  int pageIndex = 0;

  List<Widget> list1 = [
    containerColor(AppColors.greyLightColor, 'assets/png/Teacher.png'),
    containerColor(AppColors.greyLightColor, 'assets/png/Teacher.png'),
    containerColor(AppColors.greyLightColor, 'assets/png/Teacher.png')
  ];
  @override
  Widget build(BuildContext context) {
    double fullWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
            child:  Stack(
              children: [
                Column(
                      children: [
                        SizedBox(
                          width: fullWidth,
                          height: 250,
                          child: Stack(
                children: [
                  PageView(
                    children: [
                      ...list1
                          .map((widget) => SizedBox.expand(child: widget))
                          .toList(),
                    ],
                    onPageChanged: (index) {
                      setState(() {
                        pageIndex = index;
                      });
                    },
                  ),
                  Positioned(
                    top: 50,
                    left: 0,
                    child: Row(
                      children: [
                        RowSpacer(3),
                        GoBackCircleWidget(
                            color: AppColors.regularBlacColor.withOpacity(0.24)),
                        RowSpacer(8),
                        ManropeText(
                          "ОФП DF-145",
                          18,
                          AppColors.whiteColor,
                          FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 0,
                    right: 0,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          for (int i = 0; i < list1.length; i++)
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 5.0),
                              width: 9.0,
                              height: 9.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: pageIndex == i
                                    ? AppColors.whiteColor
                                    : AppColors.regularBlacColor.withOpacity(1),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
                          ),
                        ),
                        ColumnSpacer(2),
                        Row(
                          children: [
                RowSpacer(3),
                ManropeText(
                  "ОФП DF-145",
                  16,
                  AppColors.boldBlackColor,
                  FontWeight.w700,
                )
                          ],
                        ),
                        ColumnSpacer(2),
                        Row(
                          children: [
                RowSpacer(3),
                CircleAvatar(
                  backgroundColor: Colors.greenAccent[400],
                  radius: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          ManropeText(
                            "Арман Смагулов",
                            16,
                            AppColors.regularBlacColor,
                            FontWeight.normal,
                          ),
                          RowSpacer(0.9),
                          Padding(
                            padding: const EdgeInsets.only(top: 1),
                            child: ManropeText(
                              "4.9",
                              12,
                              AppColors.NavItemGrey,
                              FontWeight.normal,
                            ),
                          ),
                          RowSpacer(0.3),
                          SvgPicture.asset('assets/svg/SmallStart.svg')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: ManropeText(
                        "Старший преподаватель-тренер",
                        12,
                        AppColors.NavItemGrey,
                        FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                          ],
                        ),
                        ColumnSpacer(1),
                        Row(
                          children: [
                RowSpacer(3.2),
                SvgPicture.asset(
                  'assets/svg/CalendarNav.svg',
                  width: 18,
                  height: 18,
                ),
                RowSpacer(1),
                ManropeText(
                  "02 апреля, 14:00",
                  12,
                  AppColors.NavItemGrey,
                  FontWeight.w700,
                ),
                RowSpacer(2),
                SvgPicture.asset('assets/svg/userGreen.svg'),
                RowSpacer(0.5),
                ManropeText(
                  "15/30",
                  12,
                  AppColors.GreenColor,
                  FontWeight.w700,
                ),
                          ],
                        ),
                        ColumnSpacer(1),
                        Row(
                          children: [
                RowSpacer(3.2),
                SvgPicture.asset('assets/svg/Location.svg'),
                RowSpacer(1),
                ManropeText(
                  "Нархоз университет",
                  12,
                  AppColors.NavItemGrey,
                  FontWeight.w700,
                ),
                          ],
                        ), 
                        StudentsOrDetailsButton()
                      ],
                    ),
              ],
            )
    )
    );
  }
}
