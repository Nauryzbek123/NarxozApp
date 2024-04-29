import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:narxoz_project/src/core/resources/app_colors.dart';
import 'package:narxoz_project/src/core/widgets/column_spacer.dart';
import 'package:narxoz_project/src/core/widgets/row_spacer.dart';

import '../../../core/resources/ManropeText.dart';
import '../../../core/widgets/updateRating.dart';
import 'ButtonWidgetForNotification.dart';

class RateTeacherModal extends StatefulWidget {
  const RateTeacherModal({super.key});

  @override
  State<RateTeacherModal> createState() => _RateTeacherModalState();
}

class _RateTeacherModalState extends State<RateTeacherModal> {
  List<bool> starStates = [false, false, false, false, false];

  void updateState() {
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Container(
      width: 266,
      height: 397,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: AppColors.whiteColor,
        border: Border.all(
          color: Colors.grey.withOpacity(0), // Border color
          width: 1, // Border width
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 15, top: 15),
            child: Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                  onTap: () => context.router.pop(),
                  child: SvgPicture.asset('assets/svg/xIcon.svg')),
            ),
          ),
          ColumnSpacer(3),
          Container(
            width: 83,
            height: 69,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: AppColors.blackColor,
              border: Border.all(
                color: Colors.grey.withOpacity(0), // Border color
                width: 1, // Border width
              ),
            ),
          ),
          ColumnSpacer(1),
          ManropeText(
            "Азамат Сериков",
            11,
            AppColors.blackColor,
            FontWeight.w700,
          ),
          ColumnSpacer(1),
          UpdateRating.getStarRow(starStates, 0, updateState),
          ColumnSpacer(0.3),
          ManropeText(
            "Ваша оценка",
            7,
            AppColors.silverColor,
            FontWeight.w700,
          ),
          ColumnSpacer(1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextFormField(
              minLines: 4,
              maxLines: null,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.greyLineColor),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.greyLineColor),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                hintText: "Оставьте отзыв",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.greyLineColor),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          ColumnSpacer(1),
          ButtonWidgetForNotification(
            color: AppColors.redColor.withOpacity(0.16),
            text: "Оценить",
            textColor: AppColors.redColor,
            width: 234,
          ),
          ColumnSpacer(1),
        ],
      ),
    );
  }
}
