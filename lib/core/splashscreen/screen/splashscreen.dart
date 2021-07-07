import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:sipandumobile/core/auth/login/screen/login.dart';
import 'package:sipandumobile/core/splashscreen/service/splashscreen_service.dart';
import 'package:sipandumobile/utils/services/http_service.dart';
import 'package:sipandumobile/utils/services/navigation_service.dart';
import 'package:sipandumobile/config/route/route.gr.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  // _SplashScreen(this.navigatorKey);
  final _router = AppRouter();

  void initState() {
    super.initState();

    startSplashScreen();
  }

  void setupLocator() {}

  startSplashScreen() async {
    Future.delayed(Duration.zero, () async {
      try {
        await SplashscreenService().cek();
        AutoRouter.of(context).pushNamed('/login');
      } catch (e) {
        AutoRouter.of(context).pushNamed('/login');
      }
    });

    // final GlobalKey<NavigatorState> navigatorKey;
    // await Get.toNamed('/login');
    // try {
    //   var cek = await SplashscreenService().cek();
    //   // Navigator.pushReplacementNamed(context, '/login');
    //   // Navigator.defaultGenerateInitialRoutes(navigator, initialRouteName)

    //   print(cek);
    // } catch (e) {
    //   print(Navigator);

    //   // await navigatorKey.currentState.pushReplacement('login');
    //   // navigatorKey.currentState.pushNamed('/someRoute');

    //   // navigatorKey.currentState!.pushNamed("HomeScreen");

    //   Navigator.of(context).pop("HomeScreen");
    // }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Sipandu ',
        home: Scaffold(
          backgroundColor: Colors.purple,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.school,
                  size: 100.0,
                  color: Colors.white,
                ),
                SizedBox(height: 24.0),
                Text(
                  "SEKOLAHKU",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ));
  }
}
