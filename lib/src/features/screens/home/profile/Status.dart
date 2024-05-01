import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/resources/ManropeText.dart';
import '../../../../core/resources/app_colors.dart';
import '../../../../core/widgets/column_spacer.dart';
import '../../../../core/widgets/row_spacer.dart';
import '../../../app/widgets/GoBackCircleWidget.dart';

class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  List<bool> isSelectedList = [
    false,
    false,
    false
  ]; // Initial selection state for each RowStatus

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
                  RowSpacer(9),
                  ManropeText(
                    "Статус",
                    20,
                    AppColors.lightBlackColor,
                    FontWeight.w700,
                  ),
                ],
              ),
              ColumnSpacer(3),
              GestureDetector(
                onTap: () {
                  setState(() {
                    toggleSelection(0);
                  });
                },
                child: RowStatus("assets/svg/AllSec.svg", "Все секции",
                    isSelectedList[0], 0),
              ),
              ColumnSpacer(1),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      toggleSelection(1);
                    });
                  },
                  child: RowStatus(
                      "assets/svg/Lfk.svg", "Лфк", isSelectedList[1], 1)),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20, right: 30),
                child: Container(
                  width: 300,
                  height: 47,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: AppColors.NavItemGrey, // Border color
                      width: 1, // Border width
                    ),
                  ),
                  child: Center(
                    child: ManropeText(
                      "загрузить документ",
                      17,
                      AppColors.NavItemGrey,
                      FontWeight.w700,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      toggleSelection(2);
                    });
                  },
                  child: RowStatus(
                      "assets/svg/AllSec.svg", "Сборный", isSelectedList[2], 2))
            ],
          ),
        ],
      ),
    ));
  }

  void toggleSelection(int index) {
    setState(() {
      isSelectedList[index] = !isSelectedList[index];
    });
  }
}

Widget RowStatus(String assets, String text, bool isSelected, int index) {
  return Container(
    width: 342,
    height: 40,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.asset(assets),
            RowSpacer(3),
            SizedBox(
              width: 130,
              child: ManropeText(
                text,
                16,
                AppColors.regularBlacColor,
                FontWeight.normal,
              ),
            ),
            RowSpacer(10),
            if (isSelected) 
            SvgPicture.asset('assets/svg/CheckRed.svg'),
          ],
        ),
      ],
    ),
  );
}
