import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sipandumobile/core/splashscreen/service/splashscreen_service.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  // _SplashScreen(this.navigatorKey);

  void initState() {
    super.initState();

    startSplashScreen();
  }

  void setupLocator() {}

  startSplashScreen() async {
    Future.delayed(Duration(seconds: 3), () async {
      final ceklogin = await SplashscreenService().cek();
      print('ini login');
      print(ceklogin['status']);
      if (ceklogin['status'] == true) {
        AutoRouter.of(context).pushNamed('/home');
      } else {
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
          backgroundColor: Colors.deepOrangeAccent.shade700,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage('assets/images/lglogin2.png'),
                  width: 100,
                ),
                // get_request_header
                SizedBox(height: 24.0),
                Text(
                  "SIPANDU MOBILE",
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
