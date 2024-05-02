import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:narxoz_project/src/core/dependencies/getIt.dart';
import 'package:narxoz_project/src/core/resources/app_colors.dart';
import 'package:narxoz_project/src/core/widgets/column_spacer.dart';
import 'package:narxoz_project/src/core/widgets/row_spacer.dart';
import 'package:narxoz_project/src/features/app/router/router.gr.dart';
import 'package:narxoz_project/src/features/screens/Auth/UserInfo.dart';
import 'package:narxoz_project/src/features/screens/home/homePages/MainPageBlockWidgets/MainPageProviders.dart';
import 'package:narxoz_project/src/features/screens/home/homePages/logic/data/datasource/test/testBloc.dart';
import 'package:provider/provider.dart';

import '../../../../token/prefs.dart';
import '../../../core/resources/onboarding_bold_black_text.dart';

import 'homePages/MainPageBlockWidgets/newsIndexView.dart';
import 'homePages/MainPageBlockWidgets/teacherIndexView.dart';
import 'homePages/MainPageBlockWidgets/userLessonsView.dart';
import 'homePages/logic/data/bloc/bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final PreferencesService _preferencesService;
  @override
  void initState() {
    super.initState();
    _preferencesService = getIt<
        PreferencesService>(); // Get preferences service instance from getIt
  }

  @override
  Widget build(BuildContext context) {
    final userInfoProvider = Provider.of<UserInfoProvider>(context);
    final userInfo = userInfoProvider.userInfo;

    return MainPageProviders(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            BlocBuilder<HomePageBloc, HomePageState>(
              builder: (context, state) {
                if(state is HomeLoading){
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }else if(state is HomePageSuccess){
                  
                }
                
                return Column(
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
                                SvgPicture.asset('assets/svg/notifIcon.svg'),
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

                    SizedBox(child: newsIndexView()),
                    // AlbumWidget(),
                    ColumnSpacer(5),
                    Row(
                      children: [
                        RowSpacer(3),
                        OnBoardingBoldBlackText("Тренеры", 16),
                      ],
                    ),
                    const ColumnSpacer(3),
                    teacherIndexView(),
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
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
