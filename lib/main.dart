import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart' hide Router;
import 'package:flutter/widgets.dart';
import 'package:sipandumobile/config/route/route.gr.dart';

void main() {
  runApp(SipanduApp());
}

class SipanduApp extends StatelessWidget {
  final _router = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: AutoRouterDelegate(
        _router,
        navigatorObservers: () => [AutoRouteObserver()],
      ),
      routeInformationParser: _router.defaultRouteParser(),
    );
  }
}
