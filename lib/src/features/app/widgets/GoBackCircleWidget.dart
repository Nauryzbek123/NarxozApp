import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:narxoz_project/src/core/resources/app_colors.dart';
import 'package:narxoz_project/src/core/widgets/row_spacer.dart';

class GoBackCircleWidget extends StatelessWidget {
  final Color color;
  const GoBackCircleWidget({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.router.pop(),
      child: CircleAvatar(
        radius: 16,
        backgroundColor: color,
        child: Row(
          children: [
            RowSpacer(0.7),
             Icon(
              Icons.arrow_back_ios,
              color: AppColors.whiteColor,
            )
            
          ],
        ),
      ),
    );
  }
}
