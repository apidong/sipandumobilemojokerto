import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sipandumobile/modules/home/bloc/home_bloc.dart';
import 'package:sipandumobile/modules/home/screen/banner_screen.dart';
import 'package:sipandumobile/modules/home/screen/kategori_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  HomeScreenState();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Sipandu ',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Sipandu Mobile'),
          ),
          body: SafeArea(
            child: Container(
                child: Column(children: [
              BannerScreen(),
              Padding(padding: EdgeInsets.only(top: 25)),
              KategoriScreen()
            ])),
          ),
        ));
  }
}
