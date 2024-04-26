import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:narxoz_project/src/core/resources/app_colors.dart';
import 'package:narxoz_project/src/core/widgets/column_spacer.dart';
import 'package:narxoz_project/src/core/widgets/row_spacer.dart';

import '../../../core/resources/ManropeText.dart';
import '../../../core/resources/onboarding_bold_black_text.dart';
import '../../../core/widgets/horizontalLine.dart';
import '../../app/widgets/AlbumsWidget.dart';
import '../../app/widgets/LessonsDayWidget.dart';
import '../../app/widgets/LessonsTimeWidget.dart';
import '../../app/widgets/TeacherAlbumWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ColumnSpacer(6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5, top: 5),
                      child: Image.asset('assets/png/NavBarNarxoz.png'),
                    ),
                    SizedBox(
                      width: 70,
                      height: 24,
                      child: Stack(
                        children: [
                          SvgPicture.asset('assets/svg/notifIcon.svg'),
                          Positioned(
                            top: 0,
                            left: 22,
                            child: Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                ColumnSpacer(5),
                AlbumWidget(),
                ColumnSpacer(5),
                Row(
                  children: [
                    RowSpacer(3),
                    OnBoardingBoldBlackText("Тренеры", 16),
                  ],
                ),
                const ColumnSpacer(3),
                TeacherAlbumWidget(),
                const ColumnSpacer(1),
                const Row(
                  children: [
                    RowSpacer(2.4),
                    OnBoardingBoldBlackText("Мои Занятии", 16),
                  ],
                ),
                const ColumnSpacer(1),
                LessonsDayWidget(
                    leftText: "Сегодня, 4 апреля", rightText: "2 занятия"),
                const ColumnSpacer(1),
                HorizontalLine(
                  width: 348,
                  color: AppColors.greyLineColor,
                ),
                const ColumnSpacer(1),
                LessonsTimeWidget(),
                const ColumnSpacer(1.5),
                LessonsTimeWidget(),
                const ColumnSpacer(2),
                LessonsDayWidget(
                    leftText: "Пятница, 5 апреля", rightText: "1 занятия"),
                const ColumnSpacer(1),
                HorizontalLine(
                  width: 348,
                  color: AppColors.greyLineColor,
                ),
                const ColumnSpacer(1.5),
                LessonsTimeWidget(),
                const ColumnSpacer(1.5),
                LessonsTimeWidget(),
                ColumnSpacer(6),
                ManropeText(
                  "Показать еще",
                  12,
                  AppColors.redColor,
                  FontWeight.bold,
                ),
                ColumnSpacer(6),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
