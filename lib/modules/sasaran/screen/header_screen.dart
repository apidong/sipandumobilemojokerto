import 'package:flutter/material.dart';

class HeaderScreen extends StatelessWidget {
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
          'Sasaran',
          style: TextStyle(
              fontSize: 36, fontWeight: FontWeight.w700, color: Colors.white),
        ),
      ),
    );
  }
}
