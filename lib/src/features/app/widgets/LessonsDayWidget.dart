import 'package:flutter/material.dart';

import '../../../core/resources/ManropeText.dart';
import '../../../core/resources/app_colors.dart';

class LessonsDayWidget extends StatelessWidget {
  final String leftText;
  final String rightText;

  const LessonsDayWidget({
    Key? key,
    required this.leftText,
    required this.rightText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.only(bottom: 5),
      physics: NeverScrollableScrollPhysics(),
      children: [
        ListTile(
          contentPadding: EdgeInsets.only(left: 22, right: 20),
          title: ManropeText(
            leftText,
            10,
            AppColors.NavItemGrey,
            FontWeight.bold,
          ),
          trailing: ManropeText(
            rightText,
            10,
            AppColors.NavItemGrey,
            FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
