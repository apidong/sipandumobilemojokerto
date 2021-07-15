import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import 'package:sipandumobile/core/auth/login/bloc/login_bloc.dart';
import 'package:sipandumobile/core/auth/login/models/username.dart';
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
  // bool get isValidUsername => usernma

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
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.status.isSubmissionFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              const SnackBar(content: Text('Username dan Password Salah')),
            );
        } else if (state.status.isSubmissionSuccess) {
          AutoRouter.of(context).pushNamed('/home');
        }
      },
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
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
                key: const Key('loginForm_usernameInput_textField'),
                style: TextStyle(color: Colors.grey.shade100),
                onChanged: (username) {
                  context.read<LoginBloc>().add(LoginUsernameChanged(username));
                  print(state.username.error);
                },
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.black),
                  labelText: 'Username',
                  hintText: 'Username',
                  errorText: state.username.invalid
                      ? (state.username.error == UsernameValidationError.length
                          ? 'Panjang karakter minimal 3'
                          : 'Username tidak boleh kosong')
                      : '',
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange)),
                ),
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
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Password',
                  labelStyle: TextStyle(color: Colors.black),
                  errorText: state.password.invalid
                      ? 'passowrd tidak boleh kosong'
                      : '',
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange)),
                ),
                onChanged: (password) {
                  context.read<LoginBloc>().add(LoginPasswordChanged(password));
                },
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
      ]),
    );
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
          onPressed: () async {
            context.read<LoginBloc>().add(const LoginSubmitted());
            // context.watch(state.username);
            // print(state.username);
          });
    });
  }
}
