import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageUtils {
  static final FlutterSecureStorage _secureStorage = FlutterSecureStorage();

  static Future<void> saveData({required String key, required String value}) async {
    await _secureStorage.write(key: key, value: value);
  }

  static Future<String?> getData({required String key}) async {
    return await _secureStorage.read(key: key);
  }

  static Future<void> removeData({required String key}) async {
    await _secureStorage.delete(key: key);
  }

  static Future<void> clearAll() async {
    await _secureStorage.deleteAll();
  }

  static Future<bool> containsKey({required String key}) async {
    String? value = await _secureStorage.read(key: key);
    return value != null;
  }
}
