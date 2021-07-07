import 'package:dio/dio.dart';
import 'dart:io';
import 'package:device_info/device_info.dart';
import 'package:flutter/services.dart';

class HttpService {
  var dio = Dio();
  String deviceId = "";

  final String baseUrl =
      'http://192.168.18.50/2021/mojokerto/android_webgis/gisapp/data/';

  void initState() {
    //super.initState();

    print('state');
  }

  HttpService() {
    dio.options
      ..baseUrl = baseUrl
      ..connectTimeout = 5000 //5s
      ..receiveTimeout = 5000
      ..headers = {
        HttpHeaders.userAgentHeader: 'dio',
        'common-header': 'xx',
        'Content-Type': 'application/json',
        'android': 'true',
        'Token-App-Key': ''
      };

    initializeInterceptors();
  }

  createiddevice() {
    var device = getid();
    return device;
  }

  Future getid() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

    try {
      if (Platform.isAndroid) {
        AndroidDeviceInfo androidDeviceInfo = await deviceInfo.androidInfo;
        print('is android');
        return androidDeviceInfo.androidId; // unique ID on Android
      } else if (Platform.isIOS) {
        IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;
        return iosDeviceInfo.identifierForVendor; // unique ID on iOS
      }
    } on PlatformException {
      return <String, dynamic>{'Error:': 'Failed to get platform version.'};
    }
  }

  Future<Response> getRequest(String endPoint) async {
    Response response;
    var idDevice = await getid();
    dio.options.headers["device"] = idDevice;

    try {
      response = await dio.get(endPoint);
      print(response.data);
      print(response.headers);
// print(response.request);
      print(response.statusCode);
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }

    return response;
  }

  Future<Response> postRequest(String endPoint, Object data) async {
    Response response;
    var idDevice = await getid();
    dio.options.headers["device"] = idDevice;

    try {
      response = await dio.post(endPoint, data: data);
      // print(response.data);
      // print(response.headers);
// print(response.request);
      // print(response.statusCode);
      // print('ini');
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }

    return response;
  }

  initializeInterceptors() {
    dio.interceptors
      ..add(InterceptorsWrapper(
        onRequest: (options, handler) {
          // return handler.resolve( Response(data:"xxx"));
          // return handler.reject( DioError(message: "eh"));
          return handler.next(options);
        },
      ))
      ..add(LogInterceptor(responseBody: false)); //Open log;
  }
}
