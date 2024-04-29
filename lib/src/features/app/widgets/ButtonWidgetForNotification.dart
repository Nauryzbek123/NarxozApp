import 'package:flutter/material.dart';

import '../../../core/resources/ManropeText.dart';
import '../../../core/resources/app_colors.dart';

class ButtonWidgetForNotification extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final double width;
  const ButtonWidgetForNotification(
      {super.key,
      required this.text,
      required this.color,
      required this.textColor, 
      required this.width
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Container(
        width: width,
        height: 28,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: color,
          border: Border.all(
            color: color, // Border color
            width: 2, // Border width
          ),
        ),
        child: Center(
          child: ManropeText(
            text,
            11,
            textColor,
            FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
