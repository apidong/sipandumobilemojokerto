import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageService {
  final storage = FlutterSecureStorage();

  Future read(String key) async {
    try {
      // String value = await storage.read(key: key);
    } catch (e) {}
  }
}
