import 'package:flutter/material.dart';

class KategoriScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 190,
      margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
      // color: Colors.limeAccent,
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 30,
        childAspectRatio: (1.5 / 1),
        children: [
          Container(
              // margin: EdgeInsets.fromLTRB(50, 0, 20, 0),
              child: Center(
            child: Container(
              width: 105,
              decoration: BoxDecoration(
                  color: Color(0xffF5F0E1),
                  border: Border.all(color: Color(0xffEDEDED)),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black87.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(3, 3), // changes position of shadow
                    )
                  ]),
            ),
          )),
          Container(
              child: Center(
            child: Container(
              width: 105,
              decoration: BoxDecoration(
                  color: Color(0xffF5F0E1),
                  border: Border.all(color: Color(0xffEDEDED)),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black87.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(3, 3), // changes position of shadow
                    )
                  ]),
            ),
          )),
          Container(
              child: Center(
            child: Container(
              width: 105,
              decoration: BoxDecoration(
                  color: Color(0xffF5F0E1),
                  border: Border.all(color: Color(0xffEDEDED)),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black87.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(3, 3), // changes position of shadow
                    )
                  ]),
            ),
          )),
        ],
      ),
    );
  }
}
