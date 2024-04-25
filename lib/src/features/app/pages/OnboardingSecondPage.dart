import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:narxoz_project/src/features/app/router/router.gr.dart';

import '../../../core/resources/onboarding_bold_black_text.dart';
import '../../../core/resources/onboarding_small_grey_text.dart';
import '../../../core/widgets/column_spacer.dart';
import '../../../core/widgets/row_spacer.dart';
import '../widgets/OnboardCircle.dart';

class OnboardingSecondPage extends StatefulWidget {
  const OnboardingSecondPage({super.key});

  @override
  State<OnboardingSecondPage> createState() => _OnboardingSecondPage();
}

class _OnboardingSecondPage extends State<OnboardingSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          'assets/svg/Onboarding2.svg',
          width: MediaQuery.of(context).size.width,
        ),
        const ColumnSpacer(7),
        const Row(
          children: [
            RowSpacer(3),
            OnBoardingBoldBlackText("Получить ожог", 24),
          ],
        ),
        ColumnSpacer(2),
        const Row(
          children: [
            RowSpacer(3),
            OnBoardingSmallGreyText(
                "Давай продолжать гореть, чтобы достичь своих целей, это причиняет боль только временно, если ты сдашься сейчас, тебе будет больно вечно.")
          ],
        ),
        ColumnSpacer(12),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            OnboardCircle(
              percentage: 0.5,
              onTap: () =>
                  AutoRouter.of(context).push(const OnboardingThirdRoute()),
            ),
            RowSpacer(3)
          ],
        )
      ],
    ));
  }
}
