import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:narxoz_project/src/core/dependencies/getIt.dart';
import 'package:narxoz_project/src/core/resources/app_colors.dart';
import 'package:narxoz_project/src/features/app/router/router.gr.dart';
import 'package:narxoz_project/src/features/screens/home/homePages/logic/data/bloc/bloc.dart';
import 'package:narxoz_project/src/features/screens/home/sections/logic/bloc/sectionsIndexBloc.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  Future<void> _canPopSelf(TabsRouter tabsRouter) async {
    if (tabsRouter.current.router.canPop()) {
      await tabsRouter.current.router.popTop().then(
            (value) async => _canPopSelf(tabsRouter),
          );
    }
    return;
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<HomePageBloc>()..add(HomePageInfo()),
        ),
        
      ],
      child: AutoTabsRouter(
          routes: const [
            HomeRoute(),
            CalendarRoute(),
            SectionsRoute(),
            NewsRoute(),
            ProfileRoute()
          ],
          builder: (context, child, animation) {
            final tabsRouter = AutoTabsRouter.of(context);
            final currentIndex =
                AutoTabsRouter.of(context, watch: true).activeIndex;

            return Scaffold(
              body: FadeTransition(
                opacity: animation,
                child: child,
              ),
              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex: tabsRouter.activeIndex,
                onTap: (index) async {
                  if (index == currentIndex) {
                    await _canPopSelf(tabsRouter);
                  } else {
                    tabsRouter.setActiveIndex(index);
                  }
                },
                selectedFontSize: 12,
                unselectedFontSize: 12,
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                selectedItemColor: AppColors.redColor,
                unselectedItemColor: AppColors.NavItemGrey,
                items: [
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset('assets/svg/homeNav.svg',
                          color: currentIndex == 0
                              ? AppColors.redColor
                              : AppColors.NavItemGrey),
                      label: 'Главная'),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset('assets/svg/CalendarNav.svg',
                          color: currentIndex == 1
                              ? AppColors.redColor
                              : AppColors.NavItemGrey),
                      label: 'Календарь'),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset('assets/svg/SectionsNav.svg',
                          color: currentIndex == 2
                              ? AppColors.redColor
                              : AppColors.NavItemGrey),
                      label: 'Секции'),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset('assets/svg/NewsNav.svg',
                          color: currentIndex == 3
                              ? AppColors.redColor
                              : AppColors.NavItemGrey),
                      label: 'Новости'),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset('assets/svg/ProfileNav.svg',
                          color: currentIndex == 4
                              ? AppColors.redColor
                              : AppColors.NavItemGrey),
                      label: 'Профиль'),
                ],
              ),
            );
          }),
    );
  }
}
