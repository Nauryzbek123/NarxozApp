import 'package:flutter/material.dart';
import 'package:narxoz_project/src/core/resources/app_colors.dart';
import 'package:narxoz_project/src/core/widgets/column_spacer.dart';

import '../../../core/resources/ManropeText.dart';
import '../../../core/resources/onboarding_small_grey_text.dart';
import '../../screens/home/sections/DailySectSubPage.dart';
import 'MyLessonsContainer.dart';

class ActiveOrHistoryButtonWidget extends StatefulWidget {
  const ActiveOrHistoryButtonWidget({Key? key}) : super(key: key);

  @override
  State<ActiveOrHistoryButtonWidget> createState() => _RectButtonState();
}

class _RectButtonState extends State<ActiveOrHistoryButtonWidget> {
  Color firstButtonColor = AppColors.whiteColor;
  Color secondButtonColor = AppColors.RectBackgr;
  int selectedButtonIndex = 0;
  Color firstTextButtonColor = AppColors.lightBlackColor;
  Color secondTextButtonColor = AppColors.NavItemGrey;

  @override
  Widget build(BuildContext context) {
    double fullWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        ColumnSpacer(2),
        Container(
          width: 334,
          height: 24,
          decoration: BoxDecoration(
            color: AppColors.RectBackgr,
            borderRadius: BorderRadius.circular(5),
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
                    firstButtonColor = AppColors.whiteColor;
                    secondButtonColor = AppColors.RectBackgr;
                    selectedButtonIndex = 0;
                    firstTextButtonColor = AppColors.lightBlackColor;
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
                      "Активные",
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
                    secondButtonColor = AppColors.whiteColor;
                    selectedButtonIndex = 1;
                    firstTextButtonColor = AppColors.NavItemGrey;
                    secondTextButtonColor = AppColors.lightBlackColor;
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
                      "Прошлые",
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
              ListView.builder(
                  padding: EdgeInsets.only(top: 20),
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                      child: MyLessonsContainer(),
                    );
                  }),
            ],
          ),
        if (selectedButtonIndex == 1)
          Column(
            children: [
              ListView.builder(
                  padding: EdgeInsets.only(top: 20),
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                      child: MyLessonsContainer(),
                    );
                  }),
            ],
          ),
      ],
    );
  }
}
