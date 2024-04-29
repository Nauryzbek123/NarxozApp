import 'package:auto_route/auto_route.dart';
import 'package:narxoz_project/src/features/app/pages/OnboardingFirstPage.dart';
import 'package:narxoz_project/src/features/app/pages/OnboardingFourthPage.dart';
import 'package:narxoz_project/src/features/app/pages/OnboardingSecondPage.dart';
import 'package:narxoz_project/src/features/app/pages/OnboardingThirdPage.dart';
import 'package:narxoz_project/src/features/screens/home/BottomNavBar.dart';
import 'package:narxoz_project/src/features/screens/home/CalendarPage.dart';
import 'package:narxoz_project/src/features/screens/home/HomePage.dart';
import 'package:narxoz_project/src/features/screens/home/NewsPage.dart';
import 'package:narxoz_project/src/features/screens/home/ProfilePage.dart';
import 'package:narxoz_project/src/features/screens/home/SectionsPage.dart';
import 'package:narxoz_project/src/features/screens/home/homePages/NotificationPage.dart';
import 'package:narxoz_project/src/features/screens/home/sections/ShowLessonStudent.dart';

import '../../screens/Auth/LoginScreen.dart';
import '../../screens/home/sections/SectionsDetailPage.dart';

@MaterialAutoRouter(
    replaceInRouteName: 'Page,Route',
    routes: <AutoRoute>[
      AutoRoute(page: OnboardingFirstPage,path: '/', initial: true),
      AutoRoute(page: OnboardingSecondPage, path: '/onboardsec'),
      AutoRoute(page: OnboardingThirdPage, path: '/onboardthi'), 
      AutoRoute(page: OnboardingFourthPage, path: '/onboardfour'),
      AutoRoute(page: LoginScreen, path: '/login'),
      AutoRoute(
        page: BottomNavBar, 
        path: '/bottomNav', 
        deferredLoading: true, 
        children: [
          AutoRoute(path: 'home',page: HomePage),
          AutoRoute(path: 'calendar',page: CalendarPage),
          AutoRoute(path: 'sections',page: SectionsPage),
          AutoRoute(path: 'news',page: NewsPage),
          AutoRoute(path: 'profile',page: ProfilePage),
        ], 
      ), 
      AutoRoute(page: NotificationPage,path: '/notification'), 
      AutoRoute(page: SectionsDetailPage,path: '/sectionsPage'),
      AutoRoute(page: ShowLessonStudent,path: '/showLessonStudent')






    ],
)
class $AppRouter {}