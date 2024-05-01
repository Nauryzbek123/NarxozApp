import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:narxoz_project/src/core/resources/app_colors.dart';
import 'package:narxoz_project/src/core/widgets/column_spacer.dart';
import 'package:narxoz_project/src/core/widgets/row_spacer.dart';

import '../../../core/resources/ManropeText.dart';
import '../../../core/widgets/button_widget.dart';


class StudentsOrDetailsButton extends StatefulWidget {
  const StudentsOrDetailsButton({Key? key}) : super(key: key);

  @override
  State<StudentsOrDetailsButton> createState() => _RectButtonState();
}

class _RectButtonState extends State<StudentsOrDetailsButton> {
  int selectedIndex = -1;
  Color firstButtonColor = AppColors.RedBold;
  Color secondButtonColor = AppColors.RectBackgr;
  int selectedButtonIndex = 0;
  Color firstTextButtonColor = AppColors.whiteColor;
  Color secondTextButtonColor = AppColors.NavItemGrey;
  bool isFirstButtonVisible = true;
  @override
  Widget build(BuildContext context) {
    

    return SingleChildScrollView(
      child: Column(
        children: [
          ColumnSpacer(2),
          Container(
            width: 334,
            height: 24,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: AppColors.regularBlacColor
                    .withOpacity(0.24), // Border color
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
                        "Студенты",
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
                        "Детали",
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
                  padding: EdgeInsets.only(bottom: 50, left: 20),
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text('Арман Смагулов'),
                    );
                  },
                ),
                if (isFirstButtonVisible)
            Buttonwidget(
              text: "Записаться",
              onTap: () {
                setState(() {
                  isFirstButtonVisible = false;
                });
              },
              containerColor: AppColors.redColor,
              textColor: AppColors.textFieldGreyColor,
              fontWeight: FontWeight.bold,
              fontSize: 14,
              width: 322,
              height: 28,
              circ: 3,
              icon: '',
            ),
           if (!isFirstButtonVisible)
            Buttonwidget(
              text: "Отменить",
              onTap: () {
                setState(() {
                  isFirstButtonVisible = true;
                });
              },
              containerColor: AppColors.redColor.withOpacity(0.16),
              textColor: AppColors.redColor,
              fontWeight: FontWeight.bold,
              fontSize: 14,
              width: 322,
              height: 28,
              circ: 3,
              icon: '',
              borderColor: AppColors.redColor,
              borderWidth: 1,
            ),
          ColumnSpacer(5)
              ],
            ),
          if (selectedButtonIndex == 1)
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: 323,
                height: 518,
                child: Column(
                  children: [
                    ManropeText(
                      "Общая физическая подготовка - это процесс улучшения общей физической формы и здоровья через систематические физические упражнения и тренировки. Она включает в себя разнообразные виды активности, такие как кардиотренировки, силовые упражнения, гибкость и растяжку, а также упражнения для улучшения координации и баланса. Цели общей физической подготовки могут варьироваться в зависимости от потребностей и предпочтений каждого человека, но включают в себя улучшение кардиореспираторной функции, увеличение мышечной силы и выносливости, снижение риска развития различных заболеваний, улучшение общего самочувствия и повышение качества жизни. Для достижения этих целей рекомендуется регулярно заниматься физическими упражнениями, следить за питанием, отдыхом и ведением здорового образа жизни в целом.",
                      13,
                      AppColors.NavItemGrey,
                      FontWeight.bold,
                    ),
                    RowTxt("Продолжительность:", "75 минут"),
                    RowTxt("Дата занятие:", "12.03.2024"),
                    RowTxt("Время занятие:", "12:45"),
                    RowTxt("Силлабус тренера:",
                        "какой-то файл должен быть (можно смотреть)"),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

Widget RowTxt(String first, String sec) {
  return Row(
    children: [
      Text(
        first,
        softWrap: true,
        textAlign: TextAlign.justify,
        style: GoogleFonts.manrope(
            color: AppColors.NavItemGrey,
            fontSize: 10,
            fontWeight: FontWeight.bold),
      ),
      RowSpacer(1),
      Padding(
        padding: const EdgeInsets.only(top: 1),
        child: Container(
          width: 200,
          child: Text(
            sec,
            softWrap: true,
            textAlign: TextAlign.justify,
            style: GoogleFonts.manrope(
                color: AppColors.blackColor,
                fontSize: 12,
                fontWeight: FontWeight.bold),
          ),
        ),
      )
    ],
  );
}
