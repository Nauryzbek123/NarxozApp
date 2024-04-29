import 'package:flutter/material.dart';
import 'package:narxoz_project/src/core/resources/app_colors.dart';
import 'package:narxoz_project/src/core/widgets/column_spacer.dart';

import '../../../core/resources/ManropeText.dart';
import '../../../core/resources/onboarding_small_grey_text.dart';
import '../../screens/home/sections/DailySectSubPage.dart';

class DayliOrSectButton extends StatefulWidget {
  const DayliOrSectButton({Key? key}) : super(key: key);

  @override
  State<DayliOrSectButton> createState() => _RectButtonState();
}

class _RectButtonState extends State<DayliOrSectButton> {
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
                      "Расписание",
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
                      "О Секции",
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
        if (selectedButtonIndex == 0) DailySectSubPage(),
        if (selectedButtonIndex == 1)
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              width: 323, 
              height: 418,
              child: ManropeText(
              "Общая физическая подготовка - это процесс улучшения общей физической формы и здоровья через систематические физические упражнения и тренировки. Она включает в себя разнообразные виды активности, такие как кардиотренировки, силовые упражнения, гибкость и растяжку, а также упражнения для улучшения координации и баланса. Цели общей физической подготовки могут варьироваться в зависимости от потребностей и предпочтений каждого человека, но включают в себя улучшение кардиореспираторной функции, увеличение мышечной силы и выносливости, снижение риска развития различных заболеваний, улучшение общего самочувствия и повышение качества жизни. Для достижения этих целей рекомендуется регулярно заниматься физическими упражнениями, следить за питанием, отдыхом и ведением здорового образа жизни в целом.",
              13,
              AppColors.NavItemGrey,
              FontWeight.bold,
            ),
            
            ),
          )
    
      ],
    );
  }
}
