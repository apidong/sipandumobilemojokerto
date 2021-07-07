import 'package:auto_route/auto_route.dart';
import 'package:sipandumobile/core/auth/login/screen/login.dart';
import 'package:sipandumobile/core/splashscreen/screen/splashscreen.dart';
import 'package:sipandumobile/modules/home/screen/home_screen.dart';
import 'package:sipandumobile/modules/sasaran/screen/sasaran_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: '/', page: SplashScreen, initial: true),
    AutoRoute(path: '/login', page: LoginPage, name: 'login'),
    AutoRoute(path: '/home', page: HomeScreen),
    AutoRoute(path: '/sasaran', page: SasaranScreen),
  ],
)
class $AppRouter {}
