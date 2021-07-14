// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../core/auth/login/screen/login.dart' as _i4;
import '../../core/splashscreen/screen/splashscreen.dart' as _i3;
import '../../modules/home/screen/home_screen.dart' as _i5;
import '../../modules/penduduk/screen/penduduk_screen.dart' as _i8;
import '../../modules/program/screen/program_screen.dart' as _i7;
import '../../modules/sasaran/screen/sasaran_screen.dart' as _i6;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashScreen.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.SplashScreen();
        }),
    Login.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.LoginPage();
        }),
    HomeScreen.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.HomeScreen();
        }),
    SasaranScreen.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.SasaranScreen();
        }),
    ProgramScreen.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.ProgramScreen();
        }),
    PendudukScreen.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i8.PendudukScreen();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashScreen.name, path: '/'),
        _i1.RouteConfig(Login.name, path: '/login'),
        _i1.RouteConfig(HomeScreen.name, path: '/home'),
        _i1.RouteConfig(SasaranScreen.name, path: '/sasaran'),
        _i1.RouteConfig(ProgramScreen.name, path: '/program'),
        _i1.RouteConfig(PendudukScreen.name, path: '/penduduk')
      ];
}

class SplashScreen extends _i1.PageRouteInfo {
  const SplashScreen() : super(name, path: '/');

  static const String name = 'SplashScreen';
}

class Login extends _i1.PageRouteInfo {
  const Login() : super(name, path: '/login');

  static const String name = 'Login';
}

class HomeScreen extends _i1.PageRouteInfo {
  const HomeScreen() : super(name, path: '/home');

  static const String name = 'HomeScreen';
}

class SasaranScreen extends _i1.PageRouteInfo {
  const SasaranScreen() : super(name, path: '/sasaran');

  static const String name = 'SasaranScreen';
}

class ProgramScreen extends _i1.PageRouteInfo {
  const ProgramScreen() : super(name, path: '/program');

  static const String name = 'ProgramScreen';
}

class PendudukScreen extends _i1.PageRouteInfo {
  const PendudukScreen() : super(name, path: '/penduduk');

  static const String name = 'PendudukScreen';
}
