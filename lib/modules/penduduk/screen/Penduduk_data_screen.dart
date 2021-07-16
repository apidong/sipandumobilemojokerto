import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PendudukDataScreen extends StatefulWidget {
  // final Widget child;
  final String namaPenduduk, kk;
  final String lg, lt;

  PendudukDataScreen(
      {Key? key,
      // required this.child,
      required this.namaPenduduk,
      required this.kk,
      required this.lg,
      required this.lt})
      : super(key: key);

  @override
  _PendudukDataScreenState createState() => _PendudukDataScreenState();
}

class _PendudukDataScreenState extends State<PendudukDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          print("tapped on container");
        },
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
                    padding: EdgeInsets.only(top: 10),
                    alignment: Alignment.topLeft,
                    height: 32,
                    child: Text(
                      this.widget.namaPenduduk,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    height: 22,
                    child: Text(
                      this.widget.kk,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    height: 25,
                    child: Row(
                      children: [
                        Text(
                          'Lt : ' + this.widget.lt,
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          '    Lg : ' + this.widget.lg,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
