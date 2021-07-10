import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TaggingScreen extends StatefulWidget {
  @override
  TaggingScreenState createState() {
    return TaggingScreenState();
  }
}

class TaggingScreenState extends State<TaggingScreen> {
  TaggingScreenState();

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
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
              child: Column(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 110,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange.shade500,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),
                  child: Center(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              'Total Rumah Tangga',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                        width: MediaQuery.of(context).size.width * .8,
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        height: 60,
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Container(
                  height: 30,
                  color: Colors.amber,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: TextField(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17.0,
                      height: .7,
                    ),
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(left: 25.0),
                      labelStyle: TextStyle(color: Colors.black),
                      hintText: 'Cari',
                      filled: true,
                      fillColor: Colors.white,
                      suffixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal),
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: SizedBox(
                        child: GridView.count(
                  childAspectRatio: 9 / 2,
                  crossAxisCount: 1,
                  children: List.generate(50, (index) {
                    return Center(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        width: MediaQuery.of(context).size.width,
                        height: 80,
                        decoration: BoxDecoration(
                            color: Colors.deepOrange.shade500,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              height: 77,
                              width: 77,
                              alignment: Alignment.center,
                              child: FaIcon(
                                FontAwesomeIcons.home,
                                size: 39,
                              ),
                            ),
                            Expanded(
                                child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 5),
                                  alignment: Alignment.topLeft,
                                  height: 30,
                                  child: Text(
                                    'nama penduduk',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topLeft,
                                  height: 22,
                                  child: Text(
                                    'NIK',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topLeft,
                                  height: 25,
                                  child: Text(
                                    'lt / lg',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                )
                              ],
                            ))
                          ],
                        ),
                      ),
                    );
                  }),
                )))
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
