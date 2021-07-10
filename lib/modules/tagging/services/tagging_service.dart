import 'package:sipandumobile/utils/services/http_service.dart';

class TaggingService {
  Future<dynamic> getPenduduk() async {
    try {
      final response = await HttpService().getRequest('/master/penduduk');
      print(response);
      // response.statusCode
      return response;
    } catch (_) {
      return _;
    }
  }
}
