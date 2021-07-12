import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:sipandumobile/core/splashscreen/models/cek_model.dart';
import 'package:sipandumobile/utils/services/http_service.dart';
import 'package:dio/dio.dart';

class SplashscreenService {
  Future<dynamic> cek() async {
    Response response;

    try {
      final storage = new FlutterSecureStorage();
      Map<String, String> allValues = await storage.readAll();
      print(allValues);
      response = await HttpService().postRequest('/validation', {'data': true});
      var data = CekModel.fromJson(response.data);

      print('responses');
      print(response.data);

      // response.statusCode
      return data;
    } catch (_) {
      final rError =
          CekModel.fromJson({'status': false, 'message': _.toString()});
      final storage = new FlutterSecureStorage();
      await storage.deleteAll();

      return rError;
    }
  }
}
