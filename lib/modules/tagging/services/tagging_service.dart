import 'package:dio/dio.dart';
import 'package:sipandumobile/utils/services/http_service.dart';

class TaggingService {
  Future<dynamic> getPenduduk() async {
    Response response;
    try {
      response = await HttpService().getRequest('/master/penduduk');
      if (response.statusCode == 200) {}
      // response.statusCode
      return response;
    } catch (_) {
      print(_);
      return _;
    }
  }
}
