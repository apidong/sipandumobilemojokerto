import 'package:dio/dio.dart';
import 'package:sipandumobile/utils/services/http_service.dart';
import 'package:sipandumobile/modules/penduduk/models/pendudukmodels/penduduk_model.dart';

class PendudukService {
  Future<dynamic> getPenduduk() async {
    Response response;
    try {
      response = await HttpService().getRequest('/master/penduduk');
      if (response.statusCode == 200) {
        // var penduduk = PendudukModel.fromJson(response.data);
        // return penduduk;
      }
      // response.statusCode
      return response;
    } catch (_) {
      print(_);
      return _;
    }
  }
}
