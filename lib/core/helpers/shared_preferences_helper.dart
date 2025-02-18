import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  SharedPreferencesHelper._();

  /// Remove a value from the SharedPreferences with given [key]
  static removeData(String key) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.remove(key);
    debugPrint('SharedPrefs helper Removed key: $key');
  }

  /// Clear all data from the SharedPreferences
  static clearDataAll() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.clear();
    debugPrint('SharedPrefs helper Cleared all data');
  }

  /// Saves a [value] to the SharedPreferences with given [key]
  static setData(String key, dynamic value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    switch (value.runtimeType) {
      case String:
        debugPrint(
            'SharedPrefs helper Saved String key: $key and value: $value');
        await sharedPreferences.setString(key, value);
        break;
      case int:
        debugPrint('SharedPrefs helper Saved Int key: $key => $value');
        await sharedPreferences.setInt(key, value);
        break;
      case double:
        debugPrint('SharedPrefs helper Saved Double key: $key => $value');
        await sharedPreferences.setDouble(key, value);
        break;
      case bool:
        debugPrint('SharedPrefs helper Saved Bool key: $key => $value');
        await sharedPreferences.setBool(key, value);
        break;
      default:
        return null;
    }
  }

  /// Retrieves a boolean value from the SharedPreferences with given [key]
  static getBool(String key) async {
    debugPrint('SharedPrefs helper Retrieved key: $key');
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(key) ?? false;
  }

  /// Retrieves a double value from the SharedPreferences with given [key]
  static getDouble(String key) async {
    debugPrint('SharedPrefs helper Retrieved key: $key');
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getDouble(key) ?? 0.0;
  }

  /// Retrieves an integer value from the SharedPreferences with given [key]
  static getInt(String key) async {
    debugPrint('SharedPrefs helper Retrieved key: $key');
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getInt(key) ?? 0;
  }

  /// Retrieves a string value from the SharedPreferences with given [key]
  static getString(String key) async {
    debugPrint('SharedPrefs helper Retrieved key: $key');
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(key) ?? '';
  }
}
