import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:narxoz_project/src/core/resources/app_colors.dart';
import 'package:narxoz_project/src/core/widgets/column_spacer.dart';

import '../../../core/resources/onboarding_bold_black_text.dart';

class TeacherAlbumWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220, 
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _buildContainer(Colors.blue, leftMargin: 22, rightMargin: 10),
          _buildContainer(Colors.blue,leftMargin: 6, rightMargin: 10),
          _buildContainer(Colors.red,leftMargin: 6,),
        ],
      ),
    );
  }

  Widget _buildContainer(Color color, {double leftMargin = 0, double rightMargin = 0}) {
    return Container(
      width: 120,
      margin: EdgeInsets.only(left: leftMargin, right: rightMargin),
      child: Column( 
        children: [
          Container(
           width: 120, 
           height: 172, 
           decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: color,
      ),
          ), 
          ColumnSpacer(0.4),
         OnBoardingBoldBlackText("Бахтияр Зайнутдинов", 10),
         ColumnSpacer(0.4),
         Text("Старший преподаватель-тренер",style: GoogleFonts.raleway(
          color: AppColors.NavItemGrey, 
          fontSize: 7, 
          fontWeight: FontWeight.w300
         ))

        ],
      ),
    );
  }
}
