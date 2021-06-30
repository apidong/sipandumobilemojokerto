import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart';
import 'package:sipandumobile/core/auth/login/modul/login_module.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  void signIn(String username, String password) async {
    try {
      Response response = await Login.login(username, password);
    } catch (e) {
      print(e);
    }
  }
}
