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
      final data = SignModel.fromJson(response.data);
      if (response.statusCode == 200) {
        if (data.status == true) {
          final prefs = await SharedPreferences.getInstance();
          final storage = new FlutterSecureStorage();
          prefs.setString('user', json.encode(data.data?.user?.username));
          storage.write(key: 'token', value: data.data?.token);
        }
        return json.encode(data);
      }
      return {
        'status': 'false',
        'message': 'hubungi administrator : unknown error at login service'
      };
    } catch (_) {
      final rError = {'status': 'false', 'message': _};
      return rError;
    }
  }
}
