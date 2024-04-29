import 'package:flutter/material.dart';
import 'package:narxoz_project/src/core/widgets/column_spacer.dart';
import 'package:narxoz_project/src/core/widgets/row_spacer.dart';

import '../../../../core/resources/ManropeText.dart';
import '../../../../core/resources/app_colors.dart';
import '../../../app/widgets/ByTimeOrTrenerButton.dart';
import '../../../app/widgets/CalendarContainer.dart';

class DailySectSubPage extends StatefulWidget {
  const DailySectSubPage({Key? key}) : super(key: key);

  @override
  State<DailySectSubPage> createState() => _DailySectSubPageState();
}

class _DailySectSubPageState extends State<DailySectSubPage> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    double fullWidth = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ColumnSpacer(1),
        Row(
          children: [
            RowSpacer(3),
            ManropeText(
              "Апрель",
              12,
              AppColors.blackColor,
              FontWeight.w700,
            ),
          ],
        ),
        ColumnSpacer(1),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SizedBox(
            width: fullWidth,
            height: 42,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.0),
                    child: CalendarContainer(
                      borderColor: index == selectedIndex
                          ? AppColors.redColor
                          : AppColors.whiteColor,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        ByTimeOrTrenerButton()
      ],
    );
  }
}
