import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:sipandumobile/utils/services/http_service.dart';
import 'package:sipandumobile/core/auth/login/models/sign_model/sign_model.dart';

class LoginService {
  Future<dynamic> sign(username, password) async {
    Response response;
    SignModel signmodel;

    try {
      response = await HttpService().postRequest(
          '/login/auth', {'username': username, 'password': password});
      if (response.statusCode == 200) {
        print('session_s');
        // print(response.data);
        // final prefs = await SharedPreferences.getInstance();
        // var parseData = json.decode(response.data);
        var data = SignModel.fromJson(response.data);
        // final status = response.data.status;

        print(data.data?.user?.username);
        // print(response.statusCode);
        // prefs.setString('user', json.encode(data.user));
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
