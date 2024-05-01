import 'package:flutter/material.dart';

import '../../../../core/resources/ManropeText.dart';
import '../../../../core/resources/app_colors.dart';
import '../../../../core/widgets/column_spacer.dart';
import '../../../../core/widgets/row_spacer.dart';
import '../../../app/widgets/GoBackCircleWidget.dart';

class NewsArticle extends StatelessWidget {
  const NewsArticle({super.key});

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
                    "Новости",
                    20,
                    AppColors.lightBlackColor,
                    FontWeight.w700,
                  ),
                ],
              ),
              ColumnSpacer(2),
              Image.asset('assets/png/news.png'),
              Container( 
                width: 320, 
                child: Column( 
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [ 
                    ColumnSpacer(1),
                    ManropeText(
                    "Сборная Нархоза по чирлидингу заняла II место",
                    20,
                    AppColors.regularBlacColor,
                    FontWeight.w700,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 3),
                    child: ManropeText(
                      "30 мин назад | Футбол,Волейбол",
                      10,
                      AppColors.NavItemGrey,
                      FontWeight.normal,
                    ),
                  ),
                  ColumnSpacer(2),
                  ManropeText(
                    "По собственным впечатлениям участников, они получили море эмоций и будут усердно тренироваться для выступления на международных соревнованиях, чтобы показать еще лучший результат. Сборная Нархоза по чирлидингу приглашена на тренировочные сборы в августе, которые пройдут в Иссык-Куле, Республика Кыргызстан.Поздравляем сборную Нархоза по чирлидингу и желаем дальнейших побед и успехов!",
                    10,
                    AppColors.NavItemGrey,
                    FontWeight.normal,
                  ),
                  ColumnSpacer(3),
                  ManropeText(
                    "По собственным впечатлениям участников, они получили море эмоций и будут усердно тренироваться для выступления на международных соревнованиях, чтобы показать еще лучший результат. Сборная Нархоза по чирлидингу приглашена на тренировочные сборы в августе, которые пройдут в Иссык-Куле, Республика Кыргызстан.Поздравляем сборную Нархоза по чирлидингу и желаем дальнейших побед и успехов!",
                    10,
                    AppColors.NavItemGrey,
                    FontWeight.normal,
                  ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    )
    );
  }
}
