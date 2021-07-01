import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:sipandumobile/core/auth/login/models/models.dart';
import 'package:sipandumobile/core/auth/login/service/login_service.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._loginservice) : super(LoginInitial());

  final LoginService _loginservice;

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if (event is LoginSubmitted) {
      yield* _mapLoginSubmittedToState(event, state);
    }
  }

  Stream<LoginState> _mapLoginSubmittedToState(
    LoginSubmitted event,
    LoginState state,
  ) async* {
    try {
      print(state);
      var cek = await _loginservice.login(state.username, state.password);
      print(cek);
    } on Exception catch (_) {}
  }
}
