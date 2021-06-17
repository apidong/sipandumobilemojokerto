import 'package:auto_route/auto_route.dart';
import 'package:sipandumobile/pages/home/home.dart';
import 'package:sipandumobile/pages/login/login.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LoginPage, initial: true),
    AutoRoute(page: HomePage),
  ],
)
class $AppRouter {}
