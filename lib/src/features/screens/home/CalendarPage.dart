import 'package:flutter/material.dart';
import 'package:narxoz_project/src/core/resources/app_colors.dart';
import 'package:narxoz_project/src/core/widgets/column_spacer.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
      child: Column(
        children: [
          ColumnSpacer(5),
          SfCalendar(
            view: CalendarView.month,
            showNavigationArrow: true,
          ),
        ],
      ),
    );
  }
}
