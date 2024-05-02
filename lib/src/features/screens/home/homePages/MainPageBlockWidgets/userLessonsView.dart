import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:narxoz_project/src/features/screens/home/homePages/logic/data/bloc/bloc.dart';

import '../../../../../core/dependencies/getIt.dart';
import '../../../../../core/resources/ManropeText.dart';
import '../../../../../core/resources/app_colors.dart';
import '../../../../../core/widgets/column_spacer.dart';
import '../../../../../core/widgets/horizontalLine.dart';
import '../../../../../core/widgets/row_spacer.dart';
import '../../../../app/widgets/LessonsDayWidget.dart';
import '../../../../app/widgets/LessonsTimeWidget.dart';
import 'package:intl/intl.dart';

class UserLessonView extends StatefulWidget {
  const UserLessonView({super.key});

  @override
  State<UserLessonView> createState() => _UserLessonViewState();
}

class _UserLessonViewState extends State<UserLessonView> {
   bool showAllLessons = false;
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomePageBloc>()..add(HomePageInfo()),
      child: BlocBuilder<HomePageBloc, HomePageState>(
        builder: (context, state) {
          if (state is RepositoryError) {
            return Text("is a failure");
          }
          if (state is HomePageSuccess) {
            final lessons = state.myLesson.data ?? [];
            return SingleChildScrollView(
              child: Column(
                children: [
                  ListView.builder(
                    padding: EdgeInsets.only(bottom: 20),
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: showAllLessons ? lessons.length : (lessons.length > 3 ? 3 : lessons.length),
                    itemBuilder: (context, index) {
                      final lessonGroup = lessons[index].group;
                      final lessonList = lessons[index].lessons ?? [];
                      return Column(
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.only(left: 22, right: 20),
                            title: ManropeText(
                              lessonGroup ?? "",
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
                            padding: EdgeInsets.only(bottom: 0),
                            scrollDirection: Axis.vertical,
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: lessonList.length,
                            itemBuilder: (BuildContext context, int index) {
                              final lesson = lessonList[index];
                              final teacherName =
                                  '${lesson.teacher?.name} ${lesson.teacher?.middleName} ${lesson.teacher?.surname}';
                  
                              return Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: _buildContainer(
                                    lesson.teacher?.avatar ?? '',
                                    lesson.title ?? '',
                                    lesson.start_time ?? '',
                                    lesson.capacity ?? '',
                                    teacherName,
                                    lesson.is_available ?? '',
                                    lesson.students_count ?? 0),
                              );
                            },
                          ),
                          if (!showAllLessons && lessons.length > 2 && index == 1)
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: GestureDetector( 
                  onTap: (){
                    setState(() {
                      showAllLessons = true;
                    });
                  },
                  child: ManropeText(
                        "Показать еще",
                        12,
                        AppColors.redColor,
                        FontWeight.bold,
                      ),
                              ),
                            )
                        ],
                      );
                    },
                  ),
                ],
              ),
            );
          }
          return Container();
        },
      ),
    );
  }

  Widget _buildContainer(
      String img,
      String title,
      String start_time,
      String time,
      String teacherName,
      String is_available,
      int students_count) {
    return Container(
      height: 63,
      child: Row(
        children: [
          RowSpacer(2.5),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: CircleAvatar(
              backgroundImage: NetworkImage(img),
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
                        title,
                        11,
                        AppColors.boldBlackColor,
                        FontWeight.w700,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: ManropeText(
                        '$start_time',
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
                        teacherName,
                        10,
                        AppColors.NavItemGrey,
                        FontWeight.normal,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: ManropeText(
                        '${time} мин',
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
                            SvgPicture.asset('assets/svg/UserIcon.svg' ,
                            color: students_count < 30 ? AppColors.GreenColor : AppColors.NavItemGrey,
                            ),
                            RowSpacer(0.5),
                            ManropeText(
                              '${students_count} из 30',
                              8,
                              students_count < 30 ? AppColors.GreenColor : AppColors.NavItemGrey.withOpacity(0.25),
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
                          color: students_count < 30 ? AppColors.GreenColor.withOpacity(0.25) : AppColors.NavItemGrey,
                        ),
                        child: Center(
                          child: ManropeText(
                            "${is_available}",
                            6,
                            students_count < 30 ? AppColors.GreenColor : AppColors.NavItemGrey,
                            FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ), 
                
              ],
            ),
          )
        ],
      ),
    );
  }
}
