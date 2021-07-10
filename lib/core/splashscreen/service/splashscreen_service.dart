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
      // response.statusCode
      return data;
    } catch (_) {
      return {'status': false, 'message': _};
    }
  }
}
