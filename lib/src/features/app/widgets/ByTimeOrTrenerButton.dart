import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:narxoz_project/src/core/resources/app_colors.dart';
import 'package:narxoz_project/src/core/widgets/column_spacer.dart';
import 'package:narxoz_project/src/core/widgets/row_spacer.dart';
import 'package:narxoz_project/src/features/app/router/router.gr.dart';

import '../../../core/resources/ManropeText.dart';
import '../../../core/widgets/horizontalLine.dart';
import '../../screens/home/sections/DailySectSubPage.dart';
import 'LessonsTimeWidget.dart';
import 'SectionsSportContainer.dart';

class ByTimeOrTrenerButton extends StatefulWidget {
  const ByTimeOrTrenerButton({Key? key}) : super(key: key);

  @override
  State<ByTimeOrTrenerButton> createState() => _RectButtonState();
}

class _RectButtonState extends State<ByTimeOrTrenerButton> {
  int selectedIndex = -1;
  Color firstButtonColor = AppColors.RedBold;
  Color secondButtonColor = AppColors.RectBackgr;
  int selectedButtonIndex = 0;
  Color firstTextButtonColor = AppColors.whiteColor;
  Color secondTextButtonColor = AppColors.NavItemGrey;

  @override
  Widget build(BuildContext context) {
    double fullWidth = MediaQuery.of(context).size.width;
    final double itemHeight = 80 / 2.8;
    final double itemWidth = 80 / 2;

    return Column(
      children: [
        ColumnSpacer(2),
        Container(
          width: 334,
          height: 24,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color:
                  AppColors.regularBlacColor.withOpacity(0.24), // Border color
              width: 0.5, // Border width
            ),
          ),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    firstButtonColor = AppColors.RedBold;
                    secondButtonColor = AppColors.RectBackgr;
                    selectedButtonIndex = 0;
                    firstTextButtonColor = AppColors.whiteColor;
                    secondTextButtonColor = AppColors.NavItemGrey;
                  });
                },
                child: Container(
                  width: 166,
                  height: 22,
                  decoration: BoxDecoration(
                    color: firstButtonColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: ManropeText(
                      "По времени",
                      10,
                      firstTextButtonColor,
                      FontWeight.bold,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    firstButtonColor = AppColors.RectBackgr;
                    secondButtonColor = AppColors.RedBold;
                    selectedButtonIndex = 1;
                    firstTextButtonColor = AppColors.NavItemGrey;
                    secondTextButtonColor = AppColors.whiteColor;
                  });
                },
                child: Container(
                  width: 166,
                  height: 22,
                  decoration: BoxDecoration(
                    color: secondButtonColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: ManropeText(
                      "По тренеру",
                      10,
                      secondTextButtonColor,
                      FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        if (selectedButtonIndex == 0)
          Column(
            children: [
              ColumnSpacer(2),
              GestureDetector( 
                onTap: () =>
                  AutoRouter.of(context).push(const ShowLessonStudent()),
                child: LessonsTimeWidget(),
              ),
              ColumnSpacer(2),
              LessonsTimeWidget(),
            ],
          ),
        if (selectedButtonIndex == 1)
          Column(
            children: [
              ColumnSpacer(3),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: ManropeText(
                      "Арман Сериков",
                      14,
                      AppColors.boldBlackColor,
                      FontWeight.w700,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.NavItemGrey,
                      size: 14,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  RowSpacer(2.8),
                  ManropeText(
                    "УЛК,6 зал",
                    10,
                    AppColors.NavItemGrey,
                    FontWeight.w300,
                  ),
                ],
              ),
              ColumnSpacer(1),
              Container(
                height: (itemHeight + 20) * 3 + 80,
                child: GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 4,
                  mainAxisSpacing: 10, // Vertical spacing between items
                  crossAxisSpacing: 10, // Horizontal spacing between items
                  childAspectRatio: (itemWidth / itemHeight),
                  padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                  children: List.generate(6, (index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.0),
                          child: Container(
                            width: 80,
                            height: 42,
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: index == selectedIndex
                                    ? AppColors.redColor
                                    : AppColors.NavItemGrey, // Border color
                                width: 1, // Border width
                              ),
                            ),
                            child: Center(
                              child: ManropeText(
                                "18:00",
                                20,
                                AppColors.regularBlacColor,
                                FontWeight.bold,
                              ),
                            ),
                          )),
                    );
                  }),
                ),
              ),
              
            ],
          ),
      ],
    );
  }
}
