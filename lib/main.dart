import 'package:flutter/material.dart' hide Router;
import 'package:flutter/widgets.dart';
import 'package:sipandumobile/route/route.gr.dart';

void main() {
  runApp(SipanduApp());
}

class SipanduApp extends StatelessWidget {
  final router = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: MaterialApp.router(
            routeInformationParser: AppRouter().defaultRouteParser(),
            routerDelegate: AppRouter().delegate()));
  }
}
