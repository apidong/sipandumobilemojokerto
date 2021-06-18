import 'package:dio/dio.dart';

class HtppClient extends Interceptor {
	// final String baseUrl = 'http://192.168.18.50/';
	final String baseUrl = 'http://192.168.18.50/2021/mojokerto/android_webgis/gisapp/data/';

	@override
	void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
		options.baseUrl = baseUrl;
		var customHeaders = {
			'content-type': 'application/json'
			// other headers
		};

		options.headers.addAll(customHeaders)
		print('REQUEST[${options.method}] => PATH: ${options.path}');
		return super.onRequest(options, handler);
	}
	
}


// class AuthenticatedHttpClient extends http.BaseClient {
//   final String baseUrl = '192.168.18.50';

//   @override
//   Future<http.StreamedResponse> send(http.BaseRequest request) {
//      request.headers.putIfAbsent('token', () => 'ssss');
//     return request.send();
//   }

//   @override
//   Future<http.StreamedResponse> get(http.BaseClient )
	
// }
