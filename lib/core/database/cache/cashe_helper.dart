import 'package:shared_preferences/shared_preferences.dart';

class CasheHelper {
  late SharedPreferences sharedPreferences;

  Future<void> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<bool> savedata({required String key, required dynamic value}) async {
    if (value is bool) {
      return await sharedPreferences.setBool(key, value);
    } else if (value is int) {
      return await sharedPreferences.setInt(key, value);
    } else if (value is String) {
      return await sharedPreferences.setString(key, value);
    } else {
      return await sharedPreferences.setDouble(key, value);
    }
  }

  bool? getdata({required String key}) {
    return sharedPreferences.getBool(key);
  }

  Future<bool> removedata({required String key}) async {
    return await sharedPreferences.remove(key);
  }

  bool contaianskey({required String key}) {
    return sharedPreferences.containsKey(key);
  }
}
