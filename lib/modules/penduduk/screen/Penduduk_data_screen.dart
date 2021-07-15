import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PendudukDataScreen extends StatefulWidget {
  PendudukDataScreen({Key? key}) : super(key: key);

  @override
  _PendudukDataScreenState createState() => _PendudukDataScreenState();
}

class _PendudukDataScreenState extends State<PendudukDataScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                              fontWeight: FontWeight.bold, fontSize: 18),
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
      ),
    );
  }
}
