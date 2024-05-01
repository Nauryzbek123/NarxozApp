import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:narxoz_project/src/core/widgets/column_spacer.dart';
import 'package:narxoz_project/src/features/app/router/router.gr.dart';

import '../../../core/resources/app_colors.dart';
import '../../../core/resources/onboarding_bold_black_text.dart';
import '../../../core/widgets/TextFieldGrey.dart';
import '../../../core/widgets/button_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ColumnSpacer(20),
          const OnBoardingBoldBlackText("Добро пожаловать", 20),
          const ColumnSpacer(5),
          const TextFormFieldGrey(
            hint: "Логин",
            prefixIc: 'assets/svg/loginIcon.svg',
            sufficIc: 'none',
          ),
          const ColumnSpacer(2),
          const TextFormFieldGrey(
            hint: "Пароль",
            prefixIc: 'assets/svg/Lock.svg',
            sufficIc: 'assets/svg/HidePassword.svg',
          ),
          const ColumnSpacer(1.8),
          Text(
            "Забыли пароль?",
            style: GoogleFonts.manrope(
                color: AppColors.textFieldTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w300),
          ),
          const ColumnSpacer(13),
          Buttonwidget(
            text: "Вход",
            onTap: () => {AutoRouter.of(context).push(const BottomNavBar())},
            containerColor: AppColors.redColor,
            textColor: AppColors.whiteColor,
            fontWeight: FontWeight.w800,
            fontSize: 18,
            width: 315, 
            height: 60,
            circ: 15,
            icon: 'assets/svg/SignUp.svg',
          ),
          const ColumnSpacer(3),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             const SizedBox(
                width: 141,
                child: Divider(
                  color: AppColors.horLineColor, // Change color as needed
                  thickness: 1, // Change thickness as needed
                ),
              ),
              Text(
            "Or",
            style: GoogleFonts.inter(
                color: AppColors.blackColor,
                fontSize: 12,
                fontWeight: FontWeight.w300),
          ),
          const SizedBox(
                width: 141,
                child: Divider(
                  color: AppColors.horLineColor, // Change color as needed
                  thickness: 1, // Change thickness as needed
                ),
              ),
            ],
          ),
          const ColumnSpacer(3),
          SvgPicture.asset('assets/svg/google.svg')
        ],
      ),
    );
  }
}
