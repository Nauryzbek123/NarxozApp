import 'package:flutter/material.dart';

class HorizontalLine extends StatelessWidget {
  final double width;
  final Color color;

  const HorizontalLine({
    Key? key,
    required this.width,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.0,
      width: width,
      color: color,
    );
  }
}