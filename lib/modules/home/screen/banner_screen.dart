import 'package:flutter/material.dart';

class BannerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: Colors.green,
      child: Container(
        width: MediaQuery.of(context).size.width - 40,
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.32),
                spreadRadius: 3,
                blurRadius: 5,
                offset: Offset(2, 2), // changes position of shadow
              )
            ]),
      ),
    );
  }
}
