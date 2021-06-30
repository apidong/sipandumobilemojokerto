import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:sipandumobile/core/auth/login/modul/login_module.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final Login _login;

  LoginBloc(this._login) : super(LoginInitial());

  @override
  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginButtonPressed) {
      yield* _mapLoginToState(event);
    }
  }

  Stream<LoginState> _mapLoginToState(LoginButtonPressed event) async* {
    yield LoginLoading();

    try {
      // final user = await _login.login(event.username, event.password);
      // if (user != null) {
      //   yield LoginSuccess();
      //   yield LoginInitial();
      // } else {
      //   yield LoginFailure(error: 'Something very weird just happened');
      // }
    } catch (e) {}
  }
}
