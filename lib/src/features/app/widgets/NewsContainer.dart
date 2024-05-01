import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:narxoz_project/src/core/widgets/row_spacer.dart';

import '../../../core/resources/ManropeText.dart';
import '../../../core/resources/app_colors.dart';

class NewsContainer extends StatelessWidget {
  const NewsContainer({super.key});

  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          RowSpacer(2),
          SvgPicture.asset('assets/svg/NewsPic.svg'),
          Container(
            width: 232,
            height: 55,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: ManropeText(
                    "Сборная Нархоза по чирлидингу заняла II место",
                    13,
                    AppColors.blackColor,
                    FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: ManropeText(
                    "30 мин назад | Футбол,Волейбол",
                    10,
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
