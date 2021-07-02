// ignore: import_of_legacy_library_into_null_safe
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:sipandumobile/utils/services/http_service.dart';

class LoginService {
  Future<dynamic> sign(username, password) async {
    Response response;

    try {
      response = await HttpService().postRequest(
          '/login/auth', {'username': username, 'password': password});
      if (response.statusCode == 200) {
        final prefs = await SharedPreferences.getInstance();
        prefs.setString('user', json.encode(response.data.user));
      }
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
