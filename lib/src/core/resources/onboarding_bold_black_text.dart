import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:narxoz_project/src/core/resources/app_colors.dart';

class OnBoardingBoldBlackText extends StatelessWidget {
  final double val;
  final String text;


  const OnBoardingBoldBlackText(this.text,  this.val, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.manrope(
          color: AppColors.blackColor, fontSize: val, fontWeight: FontWeight.w800),
    );
  }
}