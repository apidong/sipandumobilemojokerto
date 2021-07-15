import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:auto_route/auto_route.dart';
import 'package:sipandumobile/config/route/route.gr.dart';

class KategoriScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.125)),
          Text('Kategori Data',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700))
        ]),
        Padding(padding: EdgeInsets.only(top: 15)),
        Row(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.125)),
            Container(
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.width * 0.3,
              child: Center(
                  child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width * 0.04)),
                  IconButton(
                      // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                      icon: FaIcon(FontAwesomeIcons.crosshairs),
                      iconSize: 40,
                      onPressed: () {
                        context.router.popAndPush(SasaranScreen());
                      }),
                  Text(
                    'Sasaran',
                    style: TextStyle(fontSize: 18),
                  )
                ],
              )),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black87.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(3, 3), // changes position of shadow
                    )
                  ]),
            ),
            Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.15)),
            Container(
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.width * 0.3,
              child: Center(
                  child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width * 0.04)),
                  IconButton(
                      // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                      icon: FaIcon(FontAwesomeIcons.th),
                      iconSize: 40,
                      onPressed: () {
                        context.router.push(ProgramScreen());
                      }),
                  Text(
                    'Program',
                    style: TextStyle(fontSize: 18),
                  )
                ],
              )),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black87.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(3, 3), // changes position of shadow
                    )
                  ]),
            ),
            Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.1)),
          ],
        ),
        Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.07)),

        // baris ke dua
        Row(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.125)),
            Container(
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.width * 0.3,
              child: Center(
                  child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width * 0.04)),
                  IconButton(
                      // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                      icon: FaIcon(FontAwesomeIcons.solidAddressBook),
                      iconSize: 40,
                      onPressed: () {
                        print("Pressed");
                      }),
                  Text(
                    'Profil DTKS',
                    style: TextStyle(fontSize: 18),
                  )
                ],
              )),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black87.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(3, 3), // changes position of shadow
                    )
                  ]),
            ),
            Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.15)),
            Container(
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.width * 0.3,
              child: Center(
                  child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width * 0.04)),
                  IconButton(
                      // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                      icon: FaIcon(FontAwesomeIcons.mapMarkerAlt),
                      iconSize: 40,
                      onPressed: () {
                        AutoRouter.of(context).pushNamed('/penduduk');
                      }),
                  Text(
                    'Tagging',
                    style: TextStyle(fontSize: 18),
                  )
                ],
              )),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black87.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(3, 3), // changes position of shadow
                    )
                  ]),
            ),
            Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.1)),
          ],
        ),
      ],
    );
  }
}
