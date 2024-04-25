import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:narxoz_project/src/features/app/router/router.gr.dart';

import '../../../core/resources/onboarding_bold_black_text.dart';
import '../../../core/resources/onboarding_small_grey_text.dart';
import '../../../core/widgets/column_spacer.dart';
import '../../../core/widgets/row_spacer.dart';
import '../widgets/OnboardCircle.dart';

class OnboardingThirdPage extends StatefulWidget {
  const OnboardingThirdPage({super.key});

  @override
  State<OnboardingThirdPage> createState() => _OnboardingThirdPage();
}

class _OnboardingThirdPage extends State<OnboardingThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          'assets/svg/Onboarding3.svg',
          width: MediaQuery.of(context).size.width,
        ),
        const ColumnSpacer(7),
        const Row(
          children: [
            RowSpacer(3),
            OnBoardingBoldBlackText("Ешьте хорошо", 24),
          ],
        ),
        ColumnSpacer(2),
        const Row(
          children: [
            RowSpacer(3),
            OnBoardingSmallGreyText(
                "Давайте начнем вести здоровый образ жизни вместе с нами, мы сможем определять ваш ежедневный рацион. здоровое питание - это весело")
          ],
        ),
        ColumnSpacer(9),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            OnboardCircle(
              percentage: 0.75,
              onTap: () =>
                  AutoRouter.of(context).push(const OnboardingFourthRoute()),
            ),
            RowSpacer(3)
          ],
        )
      ],
    ));
  }
}
