// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i21;
import 'package:flutter/material.dart' as _i22;

import '../../screens/Auth/LoginScreen.dart' as _i5;
import '../../screens/home/BottomNavBar.dart' deferred as _i6;
import '../../screens/home/CalendarPage.dart' as _i17;
import '../../screens/home/HomePage.dart' as _i16;
import '../../screens/home/homePages/NotificationPage.dart' as _i7;
import '../../screens/home/news/NewsArticle.dart' as _i10;
import '../../screens/home/NewsPage.dart' as _i19;
import '../../screens/home/profile/Faq.dart' as _i11;
import '../../screens/home/profile/Language.dart' as _i12;
import '../../screens/home/profile/ProfileMyLessons.dart' as _i13;
import '../../screens/home/profile/Settings.dart' as _i14;
import '../../screens/home/profile/Status.dart' as _i15;
import '../../screens/home/ProfilePage.dart' as _i20;
import '../../screens/home/sections/SectionsDetailPage.dart' as _i8;
import '../../screens/home/sections/ShowLessonStudent.dart' as _i9;
import '../../screens/home/SectionsPage.dart' as _i18;
import '../pages/OnboardingFirstPage.dart' as _i1;
import '../pages/OnboardingFourthPage.dart' as _i4;
import '../pages/OnboardingSecondPage.dart' as _i2;
import '../pages/OnboardingThirdPage.dart' as _i3;

class AppRouter extends _i21.RootStackRouter {
  AppRouter([_i22.GlobalKey<_i22.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i21.PageFactory> pagesMap = {
    OnboardingFirstRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.OnboardingFirstPage(),
      );
    },
    OnboardingSecondRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.OnboardingSecondPage(),
      );
    },
    OnboardingThirdRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.OnboardingThirdPage(),
      );
    },
    OnboardingFourthRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.OnboardingFourthPage(),
      );
    },
    LoginScreen.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.LoginScreen(),
      );
    },
    BottomNavBar.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i21.DeferredWidget(
          _i6.loadLibrary,
          () => _i6.BottomNavBar(),
        ),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.NotificationPage(),
      );
    },
    SectionsDetailRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.SectionsDetailPage(),
      );
    },
    ShowLessonStudent.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.ShowLessonStudent(),
      );
    },
    NewsArticle.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.NewsArticle(),
      );
    },
    Faq.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.Faq(),
      );
    },
    Language.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.Language(),
      );
    },
    ProfileMyLessons.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.ProfileMyLessons(),
      );
    },
    Settings.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.Settings(),
      );
    },
    Status.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i15.Status(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i16.HomePage(),
      );
    },
    CalendarRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i17.CalendarPage(),
      );
    },
    SectionsRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i18.SectionsPage(),
      );
    },
    NewsRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i19.NewsPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i20.ProfilePage(),
      );
    },
  };

  @override
  List<_i21.RouteConfig> get routes => [
        _i21.RouteConfig(
          OnboardingFirstRoute.name,
          path: '/',
        ),
        _i21.RouteConfig(
          OnboardingSecondRoute.name,
          path: '/onboardsec',
        ),
        _i21.RouteConfig(
          OnboardingThirdRoute.name,
          path: '/onboardthi',
        ),
        _i21.RouteConfig(
          OnboardingFourthRoute.name,
          path: '/onboardfour',
        ),
        _i21.RouteConfig(
          LoginScreen.name,
          path: '/login',
        ),
        _i21.RouteConfig(
          BottomNavBar.name,
          path: '/bottomNav',
          deferredLoading: true,
          children: [
            _i21.RouteConfig(
              HomeRoute.name,
              path: 'home',
              parent: BottomNavBar.name,
            ),
            _i21.RouteConfig(
              CalendarRoute.name,
              path: 'calendar',
              parent: BottomNavBar.name,
            ),
            _i21.RouteConfig(
              SectionsRoute.name,
              path: 'sections',
              parent: BottomNavBar.name,
            ),
            _i21.RouteConfig(
              NewsRoute.name,
              path: 'news',
              parent: BottomNavBar.name,
            ),
            _i21.RouteConfig(
              ProfileRoute.name,
              path: 'profile',
              parent: BottomNavBar.name,
            ),
          ],
        ),
        _i21.RouteConfig(
          NotificationRoute.name,
          path: '/notification',
        ),
        _i21.RouteConfig(
          SectionsDetailRoute.name,
          path: '/sectionsPage',
        ),
        _i21.RouteConfig(
          ShowLessonStudent.name,
          path: '/showLessonStudent',
        ),
        _i21.RouteConfig(
          NewsArticle.name,
          path: '/newsArticle',
        ),
        _i21.RouteConfig(
          Faq.name,
          path: '/faq',
        ),
        _i21.RouteConfig(
          Language.name,
          path: '/lang',
        ),
        _i21.RouteConfig(
          ProfileMyLessons.name,
          path: '/profileMyLess',
        ),
        _i21.RouteConfig(
          Settings.name,
          path: '/settings',
        ),
        _i21.RouteConfig(
          Status.name,
          path: '/status',
        ),
      ];
}

/// generated route for
/// [_i1.OnboardingFirstPage]
class OnboardingFirstRoute extends _i21.PageRouteInfo<void> {
  const OnboardingFirstRoute()
      : super(
          OnboardingFirstRoute.name,
          path: '/',
        );

  static const String name = 'OnboardingFirstRoute';
}

/// generated route for
/// [_i2.OnboardingSecondPage]
class OnboardingSecondRoute extends _i21.PageRouteInfo<void> {
  const OnboardingSecondRoute()
      : super(
          OnboardingSecondRoute.name,
          path: '/onboardsec',
        );

  static const String name = 'OnboardingSecondRoute';
}

/// generated route for
/// [_i3.OnboardingThirdPage]
class OnboardingThirdRoute extends _i21.PageRouteInfo<void> {
  const OnboardingThirdRoute()
      : super(
          OnboardingThirdRoute.name,
          path: '/onboardthi',
        );

  static const String name = 'OnboardingThirdRoute';
}

/// generated route for
/// [_i4.OnboardingFourthPage]
class OnboardingFourthRoute extends _i21.PageRouteInfo<void> {
  const OnboardingFourthRoute()
      : super(
          OnboardingFourthRoute.name,
          path: '/onboardfour',
        );

  static const String name = 'OnboardingFourthRoute';
}

/// generated route for
/// [_i5.LoginScreen]
class LoginScreen extends _i21.PageRouteInfo<void> {
  const LoginScreen()
      : super(
          LoginScreen.name,
          path: '/login',
        );

  static const String name = 'LoginScreen';
}

/// generated route for
/// [_i6.BottomNavBar]
class BottomNavBar extends _i21.PageRouteInfo<void> {
  const BottomNavBar({List<_i21.PageRouteInfo>? children})
      : super(
          BottomNavBar.name,
          path: '/bottomNav',
          initialChildren: children,
        );

  static const String name = 'BottomNavBar';
}

/// generated route for
/// [_i7.NotificationPage]
class NotificationRoute extends _i21.PageRouteInfo<void> {
  const NotificationRoute()
      : super(
          NotificationRoute.name,
          path: '/notification',
        );

  static const String name = 'NotificationRoute';
}

/// generated route for
/// [_i8.SectionsDetailPage]
class SectionsDetailRoute extends _i21.PageRouteInfo<void> {
  const SectionsDetailRoute()
      : super(
          SectionsDetailRoute.name,
          path: '/sectionsPage',
        );

  static const String name = 'SectionsDetailRoute';
}

/// generated route for
/// [_i9.ShowLessonStudent]
class ShowLessonStudent extends _i21.PageRouteInfo<void> {
  const ShowLessonStudent()
      : super(
          ShowLessonStudent.name,
          path: '/showLessonStudent',
        );

  static const String name = 'ShowLessonStudent';
}

/// generated route for
/// [_i10.NewsArticle]
class NewsArticle extends _i21.PageRouteInfo<void> {
  const NewsArticle()
      : super(
          NewsArticle.name,
          path: '/newsArticle',
        );

  static const String name = 'NewsArticle';
}

/// generated route for
/// [_i11.Faq]
class Faq extends _i21.PageRouteInfo<void> {
  const Faq()
      : super(
          Faq.name,
          path: '/faq',
        );

  static const String name = 'Faq';
}

/// generated route for
/// [_i12.Language]
class Language extends _i21.PageRouteInfo<void> {
  const Language()
      : super(
          Language.name,
          path: '/lang',
        );

  static const String name = 'Language';
}

/// generated route for
/// [_i13.ProfileMyLessons]
class ProfileMyLessons extends _i21.PageRouteInfo<void> {
  const ProfileMyLessons()
      : super(
          ProfileMyLessons.name,
          path: '/profileMyLess',
        );

  static const String name = 'ProfileMyLessons';
}

/// generated route for
/// [_i14.Settings]
class Settings extends _i21.PageRouteInfo<void> {
  const Settings()
      : super(
          Settings.name,
          path: '/settings',
        );

  static const String name = 'Settings';
}

/// generated route for
/// [_i15.Status]
class Status extends _i21.PageRouteInfo<void> {
  const Status()
      : super(
          Status.name,
          path: '/status',
        );

  static const String name = 'Status';
}

/// generated route for
/// [_i16.HomePage]
class HomeRoute extends _i21.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: 'home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i17.CalendarPage]
class CalendarRoute extends _i21.PageRouteInfo<void> {
  const CalendarRoute()
      : super(
          CalendarRoute.name,
          path: 'calendar',
        );

  static const String name = 'CalendarRoute';
}

/// generated route for
/// [_i18.SectionsPage]
class SectionsRoute extends _i21.PageRouteInfo<void> {
  const SectionsRoute()
      : super(
          SectionsRoute.name,
          path: 'sections',
        );

  static const String name = 'SectionsRoute';
}

/// generated route for
/// [_i19.NewsPage]
class NewsRoute extends _i21.PageRouteInfo<void> {
  const NewsRoute()
      : super(
          NewsRoute.name,
          path: 'news',
        );

  static const String name = 'NewsRoute';
}

/// generated route for
/// [_i20.ProfilePage]
class ProfileRoute extends _i21.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: 'profile',
        );

  static const String name = 'ProfileRoute';
}
