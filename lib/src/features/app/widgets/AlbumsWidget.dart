import 'package:flutter/material.dart';

class AlbumWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140, 
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _buildContainer(Colors.blue, leftMargin: 22, rightMargin: 10),
          _buildContainer(Colors.blue, rightMargin: 10),
          _buildContainer(Colors.red),
        ],
      ),
    );
  }

  Widget _buildContainer(Color color, {double leftMargin = 0, double rightMargin = 0}) {
    return Container(
      width: 260,
      margin: EdgeInsets.only(left: leftMargin, right: rightMargin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: color,
      ),
    );
  }
}
