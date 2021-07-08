import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            child: Column(children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
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
                                fontSize: 21,
                                fontWeight: FontWeight.w700,
                                color: Colors.black54),
                          ),
                        ],
                      ),
                      width: MediaQuery.of(context).size.width * .8,
                      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      height: 75,
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
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
              GridView.count(
                crossAxisCount: 1,
                children: List.generate(100, (index) {
                  return Center(
                    child: Container(
                      color: Colors.red,
                      width: 100,
                      child: Text(
                        'Item $index',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ),
                  );
                }),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
