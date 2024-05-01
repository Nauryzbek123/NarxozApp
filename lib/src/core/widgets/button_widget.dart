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
  final double width;
  final double height;
  final double circ;
  final String icon; 
  final Color? borderColor;
  final double? borderWidth;
  const Buttonwidget({
    required this.text,
    required this.onTap,
    required this.containerColor,
    required this.textColor,
    required this.fontSize,
    required this.fontWeight,
    required this.width,
    required this.height,
    required this.circ,
    required this.icon,
    this.borderColor,
    this.borderWidth,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(circ)),
            color: containerColor,
            border: borderColor != null
              ? Border.all(color: borderColor!, width: borderWidth ?? 1.0) // Apply border color and width if provided
              : null, // No border if borderColor is not provided
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(icon),
                RowSpacer(0.5),
                Text(
                  text,
                  style: GoogleFonts.manrope(
                      fontSize: fontSize,
                      color: textColor,
                      fontWeight: fontWeight),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )),
    );
  }
}
