import 'package:flutter/material.dart';

class HeaderScreen extends StatefulWidget {
  final String namatext;
  HeaderScreen({required this.namatext}) : super();

  @override
  _HeaderScreen createState() => _HeaderScreen();
}

class _HeaderScreen extends State<HeaderScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.deepOrange.shade500,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
      ),
      child: Center(
        child: Text(
          this.widget.namatext,
          style: TextStyle(
              fontSize: 36, fontWeight: FontWeight.w700, color: Colors.white),
        ),
      ),
    );
  }
}
