import 'dart:convert';

import 'package:flutter_groceries_app/main.dart';

class Globs {
  static const appName = "Flutter Groceries App";
  static const userPayload = "user_payload";
  static const userLogin = "user_login";

  static void udDoubleSet(double data, String key) {
    prefs?.setDouble(key, data);
  }

  static dynamic udValue(String key) {
    return json.decode(prefs?.get(key) as String? ?? "{}");
  }

  static String udValueString(String key) {
    return prefs?.get(key) as String? ?? "";
  }

  static bool udValueBool(String key) {
    return prefs?.getBool(key) ?? false;
  }
}
