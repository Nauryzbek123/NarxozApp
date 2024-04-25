import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:narxoz_project/src/core/resources/app_colors.dart';

class OnBoardingSmallGreyText extends StatelessWidget {
  final String text;


  const OnBoardingSmallGreyText(this.text,  {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      child: Text(
        text,
        softWrap: true,
        textAlign: TextAlign.justify,
        style: GoogleFonts.manrope(
            color: AppColors.greyLightColor, fontSize: 14, fontWeight: FontWeight.normal),
      ),
    );
  }
}