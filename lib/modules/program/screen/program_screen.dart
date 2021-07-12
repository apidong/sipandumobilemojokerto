import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sipandumobile/utils/ui/header/header_screen.dart';
import 'package:auto_route/auto_route.dart';

class ProgramScreen extends StatefulWidget {
  @override
  ProgramScreenState createState() {
    return ProgramScreenState();
  }
}

class ProgramScreenState extends State<ProgramScreen> {
  ProgramScreenState();

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
              shadowColor: Colors.deepOrange.shade500,
              backgroundColor: Colors.deepOrange.shade500,
              title: Text('Sipandu Mobile'),
            ),
            body: SafeArea(
                child: Column(
              children: [
                HeaderScreen(
                  namatext: 'Program',
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 24, 27),
                      child: Text(
                        'Kategori Sasaran',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 24),
                      ),
                    )),
                Padding(padding: EdgeInsets.only(top: 10)),
              ],
            ))));
  }
}
