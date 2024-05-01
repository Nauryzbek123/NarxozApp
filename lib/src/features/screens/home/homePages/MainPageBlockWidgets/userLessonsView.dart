import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:narxoz_project/src/features/screens/home/homePages/logic/bloc/home_bloc.dart';

import '../../../../../core/dependencies/getIt.dart';
import '../../../../../core/resources/ManropeText.dart';
import '../../../../../core/resources/app_colors.dart';
import '../../../../../core/widgets/column_spacer.dart';
import '../../../../../core/widgets/horizontalLine.dart';
import '../../../../../core/widgets/row_spacer.dart';
import '../../../../app/widgets/LessonsDayWidget.dart';
import '../../../../app/widgets/LessonsTimeWidget.dart';

class UserLessonView extends StatelessWidget {
  const UserLessonView({super.key});

  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeBloc>(),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is MenuError) {
            return const Center(
              child: Text("error"),
            );
          }
          if (state is MenuSuccess) {
            return Builder(builder: (context) {
              return Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 22, right: 20),
                    title: ManropeText(
                      "leftText",
                      10,
                      AppColors.NavItemGrey,
                      FontWeight.bold,
                    ),
                    trailing: ManropeText(
                      "rightText",
                      10,
                      AppColors.NavItemGrey,
                      FontWeight.bold,
                    ),
                  ),
                  HorizontalLine(
                    width: 348,
                    color: AppColors.greyLineColor,
                  ),
                  ListView.builder(
                      padding: EdgeInsets.only(bottom: 50),
                      scrollDirection: Axis.vertical,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 20,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: _buildContainer(),
                        );
                      }),
                  ManropeText(
                    "Показать еще",
                    12,
                    AppColors.redColor,
                    FontWeight.bold,
                  ),
                ],
              );
            });
          }
          
          return Container();
        },
      ),
    );
  }

  Widget _buildContainer() {
    return Container(
      height: 63,
      child: Row(
        children: [
          RowSpacer(2.5),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: CircleAvatar(
              backgroundColor: Colors.greenAccent[400],
              radius: 20,
            ),
          ),
          RowSpacer(0.7),
          Container(
            width: 298,
            height: 63,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4), // Border radius
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Shadow color
                  spreadRadius: 2, // Spread radius
                  blurRadius: 4, // Blur radius
                  offset: Offset(0, 2), // Shadow offset
                ),
              ],
              border: Border.all(
                color: Colors.grey.withOpacity(0), // Border color
                width: 1, // Border width
              ),
            ),
            child: Column(
              children: [
                ColumnSpacer(0.6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: ManropeText(
                        "Футбол FT-345",
                        11,
                        AppColors.boldBlackColor,
                        FontWeight.w700,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: ManropeText(
                        "8:00",
                        11,
                        AppColors.regularBlacColor,
                        FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: ManropeText(
                        "Бакытжан Сериков",
                        10,
                        AppColors.NavItemGrey,
                        FontWeight.normal,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: ManropeText(
                        "45 мин",
                        7,
                        AppColors.NavItemGrey,
                        FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                ColumnSpacer(0.6),
                Container(
                  height: 1.0,
                  width: 270,
                  color: AppColors.greyLineColor,
                ),
                ColumnSpacer(0.3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Container(
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/svg/UserIcon.svg'),
                            RowSpacer(0.5),
                            ManropeText(
                              "30 из 30",
                              8,
                              AppColors.NavItemGrey,
                              FontWeight.bold,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 7),
                      child: Container(
                        width: 48,
                        height: 14,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: AppColors.NavItemGrey.withOpacity(0.25),
                        ),
                        child: Center(
                          child: ManropeText(
                            "Мест нет",
                            6,
                            AppColors.NavItemGrey,
                            FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
