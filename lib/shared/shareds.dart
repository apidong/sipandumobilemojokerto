import 'package:dio/dio.dart';
import 'package:sipandumobile/config/AuthenticatedHttpClient.dart';
import 'dart:convert';

class Cek {
  HtppClient _client;

  Future<Map<String, dynamic>> fetchAllProduct() async {
    try {
      final response = await _client.onRequest('/product');
      // It's better to return a Model class instead but this is
      // only for example purposes only
      return json.decode(response.toString());
    } on DioError catch (ex) {
      // Assuming there will be an errorMessage property in the JSON object
      String errorMessage = json.decode(ex.response.toString())["errorMessage"];
      throw new Exception(errorMessage);
    }
  }
}
