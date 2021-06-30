import 'package:auto_route/auto_route.dart';
import 'package:sipandumobile/modules/home/home.dart';
import 'package:sipandumobile/core/auth/login/screen/login.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LoginPage, initial: true),
    AutoRoute(page: HomePage),
  ],
)
class $AppRouter {}
