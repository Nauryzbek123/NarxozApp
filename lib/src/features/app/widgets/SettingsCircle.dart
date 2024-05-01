import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/resources/ManropeText.dart';
import '../../../core/resources/app_colors.dart';
import '../../../core/widgets/row_spacer.dart';

class SettingsCircle extends StatelessWidget {
  const SettingsCircle({super.key});

  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          RowSpacer(2),
          CircleAvatar(
            radius: 35.615,
          ),
          Container(
            padding: EdgeInsets.only(top: 10, left: 10),
            width: 252,
            height: 72,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: ManropeText(
                    "Азамат Мусагалиев",
                    20,
                    AppColors.blackColor,
                    FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: ManropeText(
                    "S77777777 · @azamat.mussagaliyev",
                    13,
                    AppColors.NavItemGrey,
                    FontWeight.normal,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
