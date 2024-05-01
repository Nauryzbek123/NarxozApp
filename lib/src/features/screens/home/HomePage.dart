import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:narxoz_project/src/core/resources/app_colors.dart';
import 'package:narxoz_project/src/core/widgets/column_spacer.dart';
import 'package:narxoz_project/src/core/widgets/row_spacer.dart';
import 'package:narxoz_project/src/features/app/router/router.gr.dart';
import 'package:narxoz_project/src/features/screens/Auth/UserInfo.dart';
import 'package:narxoz_project/src/features/screens/home/homePages/MainPageBlockWidgets/MainPageProviders.dart';
import 'package:narxoz_project/src/features/screens/home/homePages/logic/bloc/home_bloc.dart';
import 'package:provider/provider.dart';

import '../../../core/resources/ManropeText.dart';
import '../../../core/resources/onboarding_bold_black_text.dart';
import '../../../core/widgets/horizontalLine.dart';
import '../../app/widgets/AlbumsWidget.dart';
import '../../app/widgets/LessonsDayWidget.dart';
import '../../app/widgets/LessonsTimeWidget.dart';
import '../../app/widgets/TeacherAlbumWidget.dart';
import 'homePages/MainPageBlockWidgets/userLessonsView.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final userInfoProvider = Provider.of<UserInfoProvider>(context);
    final userInfo = userInfoProvider.userInfo;

    return MainPageProviders(
      child: Scaffold(
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is MenuError) {
              return Text("error sets");
            }
            if (state is MenuLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is MenuSuccess) {
              return SingleChildScrollView(
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ColumnSpacer(6),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5, top: 5),
                              child: Image.asset('assets/png/NavBarNarxoz.png'),
                            ),
                            GestureDetector(
                              onTap: () => AutoRouter.of(context)
                                  .push(const NotificationRoute()),
                              child: SizedBox(
                                width: 70,
                                height: 24,
                                child: Stack(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/svg/notifIcon.svg'),
                                    Positioned(
                                      top: 0,
                                      left: 22,
                                      child: Container(
                                        width: 8,
                                        height: 8,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        ColumnSpacer(5),
                        AlbumWidget(),
                        ColumnSpacer(5),
                        Row(
                          children: [
                            RowSpacer(3),
                            OnBoardingBoldBlackText("Тренеры", 16),
                          ],
                        ),
                        const ColumnSpacer(3),
                        TeacherAlbumWidget(),
                        const ColumnSpacer(1),
                        const Row(
                          children: [
                            RowSpacer(2.4),
                            OnBoardingBoldBlackText("Мои Занятии", 16),
                          ],
                        ),
                        UserLessonView(),
                        ColumnSpacer(6),
                      ],
                    ),
                  ],
                ),
              );
            }
            ;
            return Container();
          },
        ),
      ),
    );
  }
}
