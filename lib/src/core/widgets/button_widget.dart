import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:narxoz_project/src/core/widgets/row_spacer.dart';

class Buttonwidget extends StatelessWidget {
  final String text;
  final Function() onTap;
  final Color containerColor;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  const Buttonwidget({
    required this.text,
    required this.onTap,
    required this.containerColor,
    required this.textColor,
    required this.fontSize,
    required this.fontWeight,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 315,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          color: containerColor,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/svg/SignUp.svg'),
              RowSpacer(0.5),
              Text(
            text,
            style: GoogleFonts.manrope(
                fontSize: fontSize, color: textColor, fontWeight: fontWeight),
            textAlign: TextAlign.center,
          ),
            ],
          ),
        )
        
      ),
    );
  }
}
