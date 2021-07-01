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
      routerDelegate: _router.delegate(),
      routeInformationParser: _router.defaultRouteParser(),
    );
  }
}
