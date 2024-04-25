import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:narxoz_project/src/core/resources/onboarding_bold_black_text.dart';
import 'package:narxoz_project/src/core/widgets/column_spacer.dart';
import 'package:narxoz_project/src/core/widgets/row_spacer.dart';
import 'package:narxoz_project/src/features/app/router/router.gr.dart';

import '../../../core/resources/onboarding_small_grey_text.dart';
import '../widgets/OnboardCircle.dart';

class OnboardingFirstPage extends StatefulWidget {
  const OnboardingFirstPage({super.key});

  @override
  State<OnboardingFirstPage> createState() => _OnboardingFirstPage();
}

class _OnboardingFirstPage extends State<OnboardingFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      
            children: [
               SvgPicture.asset('assets/svg/Onboarding1.svg',
                 width: MediaQuery.of(context).size.width,
                ),
             const ColumnSpacer(7),
             const Row(
              children: [
              RowSpacer(3),
             OnBoardingBoldBlackText("Следите за своей целью", 24),
              ],
             ),
             ColumnSpacer(2),
             const Row(
              children: [
              RowSpacer(3),
             OnBoardingSmallGreyText("Не волнуйтесь, если у вас возникнут проблемы с определением ваших целей, мы поможем вам определить их и отслеживать достижение")
              ],
             ),
             ColumnSpacer(12),
             Row(
              mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 OnboardCircle(percentage: 0.25,onTap:  () => AutoRouter.of(context).push(const OnboardingSecondRoute()),),
                 RowSpacer(3)
               ],
             )

            ],
          )
    );
  }
}
