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
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;

import '../../screens/Auth/LoginScreen.dart' as _i5;
import '../../screens/home/BottomNavBar.dart' deferred as _i6;
import '../../screens/home/CalendarPage.dart' as _i9;
import '../../screens/home/HomePage.dart' as _i8;
import '../../screens/home/homePages/NotificationPage.dart' as _i7;
import '../../screens/home/NewsPage.dart' as _i11;
import '../../screens/home/ProfilePage.dart' as _i12;
import '../../screens/home/SectionsPage.dart' as _i10;
import '../pages/OnboardingFirstPage.dart' as _i1;
import '../pages/OnboardingFourthPage.dart' as _i4;
import '../pages/OnboardingSecondPage.dart' as _i2;
import '../pages/OnboardingThirdPage.dart' as _i3;

class AppRouter extends _i13.RootStackRouter {
  AppRouter([_i14.GlobalKey<_i14.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    OnboardingFirstRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.OnboardingFirstPage(),
      );
    },
    OnboardingSecondRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.OnboardingSecondPage(),
      );
    },
    OnboardingThirdRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.OnboardingThirdPage(),
      );
    },
    OnboardingFourthRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.OnboardingFourthPage(),
      );
    },
    LoginScreen.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.LoginScreen(),
      );
    },
    BottomNavBar.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i13.DeferredWidget(
          _i6.loadLibrary,
          () => _i6.BottomNavBar(),
        ),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.NotificationPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.HomePage(),
      );
    },
    CalendarRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.CalendarPage(),
      );
    },
    SectionsRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.SectionsPage(),
      );
    },
    NewsRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.NewsPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.ProfilePage(),
      );
    },
  };

  @override
  List<_i13.RouteConfig> get routes => [
        _i13.RouteConfig(
          OnboardingFirstRoute.name,
          path: '/',
        ),
        _i13.RouteConfig(
          OnboardingSecondRoute.name,
          path: '/onboardsec',
        ),
        _i13.RouteConfig(
          OnboardingThirdRoute.name,
          path: '/onboardthi',
        ),
        _i13.RouteConfig(
          OnboardingFourthRoute.name,
          path: '/onboardfour',
        ),
        _i13.RouteConfig(
          LoginScreen.name,
          path: '/login',
        ),
        _i13.RouteConfig(
          BottomNavBar.name,
          path: '/bottomNav',
          deferredLoading: true,
          children: [
            _i13.RouteConfig(
              HomeRoute.name,
              path: 'home',
              parent: BottomNavBar.name,
            ),
            _i13.RouteConfig(
              CalendarRoute.name,
              path: 'calendar',
              parent: BottomNavBar.name,
            ),
            _i13.RouteConfig(
              SectionsRoute.name,
              path: 'sections',
              parent: BottomNavBar.name,
            ),
            _i13.RouteConfig(
              NewsRoute.name,
              path: 'news',
              parent: BottomNavBar.name,
            ),
            _i13.RouteConfig(
              ProfileRoute.name,
              path: 'profile',
              parent: BottomNavBar.name,
            ),
          ],
        ),
        _i13.RouteConfig(
          NotificationRoute.name,
          path: '/notification',
        ),
      ];
}

/// generated route for
/// [_i1.OnboardingFirstPage]
class OnboardingFirstRoute extends _i13.PageRouteInfo<void> {
  const OnboardingFirstRoute()
      : super(
          OnboardingFirstRoute.name,
          path: '/',
        );

  static const String name = 'OnboardingFirstRoute';
}

/// generated route for
/// [_i2.OnboardingSecondPage]
class OnboardingSecondRoute extends _i13.PageRouteInfo<void> {
  const OnboardingSecondRoute()
      : super(
          OnboardingSecondRoute.name,
          path: '/onboardsec',
        );

  static const String name = 'OnboardingSecondRoute';
}

/// generated route for
/// [_i3.OnboardingThirdPage]
class OnboardingThirdRoute extends _i13.PageRouteInfo<void> {
  const OnboardingThirdRoute()
      : super(
          OnboardingThirdRoute.name,
          path: '/onboardthi',
        );

  static const String name = 'OnboardingThirdRoute';
}

/// generated route for
/// [_i4.OnboardingFourthPage]
class OnboardingFourthRoute extends _i13.PageRouteInfo<void> {
  const OnboardingFourthRoute()
      : super(
          OnboardingFourthRoute.name,
          path: '/onboardfour',
        );

  static const String name = 'OnboardingFourthRoute';
}

/// generated route for
/// [_i5.LoginScreen]
class LoginScreen extends _i13.PageRouteInfo<void> {
  const LoginScreen()
      : super(
          LoginScreen.name,
          path: '/login',
        );

  static const String name = 'LoginScreen';
}

/// generated route for
/// [_i6.BottomNavBar]
class BottomNavBar extends _i13.PageRouteInfo<void> {
  const BottomNavBar({List<_i13.PageRouteInfo>? children})
      : super(
          BottomNavBar.name,
          path: '/bottomNav',
          initialChildren: children,
        );

  static const String name = 'BottomNavBar';
}

/// generated route for
/// [_i7.NotificationPage]
class NotificationRoute extends _i13.PageRouteInfo<void> {
  const NotificationRoute()
      : super(
          NotificationRoute.name,
          path: '/notification',
        );

  static const String name = 'NotificationRoute';
}

/// generated route for
/// [_i8.HomePage]
class HomeRoute extends _i13.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: 'home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i9.CalendarPage]
class CalendarRoute extends _i13.PageRouteInfo<void> {
  const CalendarRoute()
      : super(
          CalendarRoute.name,
          path: 'calendar',
        );

  static const String name = 'CalendarRoute';
}

/// generated route for
/// [_i10.SectionsPage]
class SectionsRoute extends _i13.PageRouteInfo<void> {
  const SectionsRoute()
      : super(
          SectionsRoute.name,
          path: 'sections',
        );

  static const String name = 'SectionsRoute';
}

/// generated route for
/// [_i11.NewsPage]
class NewsRoute extends _i13.PageRouteInfo<void> {
  const NewsRoute()
      : super(
          NewsRoute.name,
          path: 'news',
        );

  static const String name = 'NewsRoute';
}

/// generated route for
/// [_i12.ProfilePage]
class ProfileRoute extends _i13.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: 'profile',
        );

  static const String name = 'ProfileRoute';
}
