import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:narxoz_project/src/core/widgets/row_spacer.dart';
import 'package:narxoz_project/src/features/app/router/router.gr.dart';

import '../../../core/resources/ManropeText.dart';
import '../../../core/resources/app_colors.dart';
import '../../../core/widgets/column_spacer.dart';
import '../../app/widgets/SectionsSportContainer.dart';

class SectionsPage extends StatelessWidget {
  const SectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double itemHeight = 90 / 2;
    final double itemWidth = 110 / 2;
    return Scaffold(
        body: Column(
      children: [
        ColumnSpacer(6),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 5),
              child: Image.asset('assets/png/NavBarNarxoz.png'),
            ),
          ],
        ),
        ColumnSpacer(3),
        ManropeText(
          "Секции",
          20,
          AppColors.blackColor,
          FontWeight.w700,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () =>
                  AutoRouter.of(context).push(const SectionsDetailRoute()),
            child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 10, // Vertical spacing between items
              crossAxisSpacing: 10, // Horizontal spacing between items
              childAspectRatio: (itemWidth / itemHeight),
              padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
              children: List.generate(7, (index) {
                return SectionsSportContainer();
              }),
            ),
          ),
        ),
      ],
    ));
  }
}
