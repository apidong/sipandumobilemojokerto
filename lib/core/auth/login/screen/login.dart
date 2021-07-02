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
      title: 'Welcome to Flutter',
      home: Scaffold(
          body: Container(
        padding: EdgeInsets.only(top: 70.0),
        color: Colors.blue[50],
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
          color: Colors.red[50],
          child: Image(image: AssetImage('assets/images/lglogin2.png'))),
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
        child: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            return TextField(
              decoration: const InputDecoration(
                hintText: 'username',
              ),
              onChanged: (username) =>
                  context.read<LoginBloc>().add(LoginUsernameChanged(username)),
            );
          },
        ),
      ),
      Container(
        padding: EdgeInsets.only(top: 40, left: 30, right: 30),
        color: Colors.red[50],
        width: MediaQuery.of(context).size.width,
        child: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            return TextField(
              decoration: const InputDecoration(
                hintText: 'Password',
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
          key: const Key('loginForm_continue_raisedButton'),
          child: const Text('Login'),
          onPressed: () {
            context
                .read<LoginBloc>()
                .add(const LoginSubmitted('ssss', 'sssss'));
          });
    });
  }
}