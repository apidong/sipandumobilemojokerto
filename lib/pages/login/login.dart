import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
          body: Container(
        padding: EdgeInsets.only(top: 70.0),
        color: Colors.blue[50],
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Container(
                  height: 75,
                  color: Colors.red[50],
                  child:
                      Image(image: AssetImage('assets/images/lglogin2.png'))),
              Container(
                  padding: EdgeInsets.only(top: 20.0, bottom: 50),
                  color: Colors.red[50],
                  child: const Text(
                    'SIPANDU MOBILE',
                    style: TextStyle(fontSize: 30),
                  )),
              Container(
                padding: EdgeInsets.only(left: 30, right: 30),
                color: Colors.red[50],
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'username',
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 40, left: 30, right: 30),
                color: Colors.red[50],
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Password',
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('Login')),
              )
            ])
          ],
        ),
      )),
    );
  }
}
