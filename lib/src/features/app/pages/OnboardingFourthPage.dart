import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:narxoz_project/src/features/app/router/router.gr.dart';

import '../../../core/resources/onboarding_bold_black_text.dart';
import '../../../core/resources/onboarding_small_grey_text.dart';
import '../../../core/widgets/column_spacer.dart';
import '../../../core/widgets/row_spacer.dart';
import '../widgets/OnboardCircle.dart';

class OnboardingFourthPage extends StatefulWidget {
  const OnboardingFourthPage({super.key});

  @override
  State<OnboardingFourthPage> createState() => _OnboardingFourthPage();
}

class _OnboardingFourthPage extends State<OnboardingFourthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          'assets/svg/Onboarding4.svg',
          width: MediaQuery.of(context).size.width,
        ),
        const ColumnSpacer(7),
        const Row(
          children: [
            RowSpacer(3),
            OnBoardingBoldBlackText("Улучшите качество сна", 24),
          ],
        ),
        ColumnSpacer(2),
        const Row(
          children: [
            RowSpacer(3),
            OnBoardingSmallGreyText(
                "Улучшайте качество своего сна вместе с нами, качественный сон может принести хорошее настроение по утрам")
          ],
        ),
        ColumnSpacer(12),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            OnboardCircle(
              percentage: 1,
              onTap: () =>
                  AutoRouter.of(context).push(LoginScreen()),
            ),
            RowSpacer(3)
          ],
        )
      ],
    ));
  }
}
