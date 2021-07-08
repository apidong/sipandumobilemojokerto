import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sipandumobile/core/auth/login/bloc/login_bloc.dart';
import 'package:sipandumobile/core/auth/login/service/login_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  // HttpService http;
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => LoginPage());
  }

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sipandu',
      home: Scaffold(
          body: Container(
        padding: EdgeInsets.only(top: 70.0),
        color: Colors.deepOrangeAccent.shade200,
        alignment: Alignment.center,
        child: BlocProvider(
          create: (context) => LoginBloc(LoginService()),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[LoginForm()],
          ),
        ),
      )),
    );
  }
}

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Container(
          height: 75,
          child: Image(image: AssetImage('assets/images/lglogin2.png'))),
      Container(
          padding: EdgeInsets.only(top: 20.0, bottom: 50),
          child: const Text(
            'SIPANDU MOBILE',
            style: TextStyle(fontSize: 30, color: Colors.white),
          )),
      Container(
        padding: EdgeInsets.only(left: 30, right: 30),
        width: MediaQuery.of(context).size.width,
        child: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            return TextField(
              style: TextStyle(color: Colors.grey.shade100),
              decoration: const InputDecoration(
                labelStyle: TextStyle(color: Colors.black),
                labelText: 'Username',
                hintText: 'Username',
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange)),
              ),
              onChanged: (username) =>
                  context.read<LoginBloc>().add(LoginUsernameChanged(username)),
            );
          },
        ),
      ),
      Container(
        padding: EdgeInsets.only(top: 40, left: 30, right: 30),
        // color: Colors.red[50],
        width: MediaQuery.of(context).size.width,
        child: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            return TextField(
              style: TextStyle(color: Colors.grey.shade100),
              decoration: const InputDecoration(
                labelText: 'Password',
                hintText: 'Password',
                labelStyle: TextStyle(color: Colors.black),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange)),
              ),
              onChanged: (password) =>
                  context.read<LoginBloc>().add(LoginPasswordChanged(password)),
              obscureText: true,
            );
          },
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
        width: MediaQuery.of(context).size.width,
        child: _LoginButton(),
      )
    ]);
  }
}

class _LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      return ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
          ),
          key: const Key('loginForm_continue_raisedButton'),
          child: const Text('Login'),
          onPressed: () {
            context.read<LoginBloc>().add(const LoginSubmitted());
          });
    });
  }
}
