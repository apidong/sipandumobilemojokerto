import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:sipandumobile/utils/services/http_service.dart';
import 'package:sipandumobile/core/auth/login/models/sign_model/sign_model.dart';

class LoginService {
  Future<dynamic> sign(username, password) async {
    Response response;

    try {
      response = await HttpService().postRequest(
          '/login/auth', {'username': username, 'password': password});
      if (response.statusCode == 200) {
        final prefs = await SharedPreferences.getInstance();
        final storage = new FlutterSecureStorage();
        var data = SignModel.fromJson(response.data);
        prefs.setString('user', json.encode(data.data?.user?.username));
        storage.write(key: 'token', value: data.data?.token);
      }
      return response;
    } catch (e) {
      print("There is some problem status code not 200");
      return e;
    }
  }
}
