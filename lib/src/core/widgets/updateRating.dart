import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:narxoz_project/src/core/resources/app_colors.dart';

import 'row_spacer.dart';

class UpdateRating {
  static Widget getStarRow(List<bool> starStates, int index, Function setStateCallback) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            UpdateRating.updateStarState(starStates, index, setStateCallback);
          },
          child: SvgPicture.asset(
            'assets/svg/GreyStar.svg',
            color: starStates[index] ? AppColors.StarColor : null,
          ),
        ),
            RowSpacer(1),
        GestureDetector(
          onTap: () {
            UpdateRating.updateStarState(starStates, index + 1, setStateCallback);
          },
          child: SvgPicture.asset(
            'assets/svg/GreyStar.svg',
            color: starStates[index + 1] ? AppColors.StarColor : null,
          ),
        ),
            RowSpacer(1),
        GestureDetector(
          onTap: () {
            UpdateRating.updateStarState(starStates, index + 2, setStateCallback);
          },
          child: SvgPicture.asset(
            'assets/svg/GreyStar.svg',
            color: starStates[index + 2] ? AppColors.StarColor : null,
          ),
        ),
            RowSpacer(1),
        GestureDetector(
          onTap: () {
            UpdateRating.updateStarState(starStates, index + 3, setStateCallback);
          },
          child: SvgPicture.asset(
            'assets/svg/GreyStar.svg',
            color: starStates[index + 3] ? AppColors.StarColor : null,
          ),
        ),
            RowSpacer(1),
        GestureDetector(
          onTap: () {
            UpdateRating.updateStarState(starStates, index + 4, setStateCallback);
          },
          child: SvgPicture.asset(
            'assets/svg/GreyStar.svg',
            color: starStates[index + 4] ? AppColors.StarColor : null,
          ),
        ),
      ],
    );
  }

  static void updateStarState(List<bool> starStates, int index, Function setStateCallback) {
    for (int i = 0; i <= index; i++) {
      starStates[i] = true;
    }
    for (int i = index + 1; i < starStates.length; i++) {
      starStates[i] = false;
    }
    setStateCallback();
  }
}

