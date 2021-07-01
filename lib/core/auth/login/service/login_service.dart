import 'package:dio/dio.dart';
import 'package:sipandumobile/core/auth/login/index.dart';
// import 'package:flutter/foundation.dart';
import 'package:sipandumobile/utils/services/http_service.dart';

class LoginService {
  // String username;
  // String password;

  // Login({required this.username, required this.password});

  Future<dynamic> login(String username, Password password) async {
    Response response;
    try {
      response = await HttpService().postRequest(
          '/login/auth', {'username': username, 'password': password});
      print(response);
      return response;
      // if (response.statusCode == 200) {
      // } else {
      //   print("There is some problem status code not 200");
      // }
    } catch (e) {
      print(e);
      print("There is some problem status code not 200");
    }
  }
}
