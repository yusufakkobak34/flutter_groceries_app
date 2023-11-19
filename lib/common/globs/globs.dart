import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_groceries_app/main.dart';
import 'package:flutter_timezone/flutter_timezone.dart';

class Globs {
  static const appName = "Flutter Groceries App";
  static const userPayload = "user_payload";
  static const userLogin = "user_login";

  static void showHUD({String status = "yükleniyor..."}) async {
    await Future.delayed(const Duration(milliseconds: 1));
    EasyLoading.show(status: status);
  }

  static void hideHUD() {
    EasyLoading.dismiss();
  }

  static void udSet(dynamic data, String key) {
    var jsonStr = json.encode(data);
    prefs?.setString(key, jsonStr);
  }

  static void udStringSet(String data, String key) {
    prefs?.setString(key, data);
  }

  static void udBoolSet(bool data, String key) {
    prefs?.setBool(key, data);
  }

  static void udIntSet(int data, String key) {
    prefs?.setInt(key, data);
  }

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

  static bool udValueTrueBool(String key) {
    return prefs?.get(key) as bool? ?? false;
  }

  static int udValueInt(String key) {
    return prefs?.get(key) as int? ?? 0;
  }

  static double udValueDouble(String key) {
    return prefs?.get(key) as double? ?? 0.0;
  }

  static void udRemove(String key) {
    prefs?.remove(key);
  }

  static Future<String> timeZone() async {
    try {
      return await FlutterTimezone.getLocalTimezone();
    } on PlatformException {
      return "";
    }
  }
}

class SVKey {
  static const mainUrl = "http://10.0.2.2:3001";
  static const baseUrl = '$mainUrl/api/';
  static const nodeUrl = mainUrl;
  static const svLogin = '${baseUrl}login';
  static const svSignUp = '${baseUrl}sign_up';
  static const svHome = '${baseUrl}home';
  static const svProductDetail = '${baseUrl}product_detail';
  static const svAddRemoveFavorite = '${baseUrl}add_remove_favorite';
  static const svFavorite = '${baseUrl}favorite_list';
  static const svExploreList = '${baseUrl}explore_category_list';
  static const svExploreItemList = '${baseUrl}explore_category_items_list';
  static const svAddToCart = '${baseUrl}add_to_cart';
  static const svUpdateCart = '${baseUrl}update_cart';
  static const svRemoveCart = '${baseUrl}remove_cart';
  static const svCartList = '${baseUrl}cart_list';
  static const svOrderPlace = '${baseUrl}order_place';
  static const svAddDeliveryAddress = '${baseUrl}add_delivery_address';
  static const svUpdateDeliveryAddress = '${baseUrl}update_delivery_address';
  static const svDeleteDeliveryAddress = '${baseUrl}delete_delivery_address';
  static const svDeliveryAddress = '${baseUrl}delivery_address';
  static const svAddPaymentMethod = '${baseUrl}add_payment_method';
  static const svRemovePaymentMethod = '${baseUrl}remove_payment_method';
  static const svPaymentMethodList = '${baseUrl}payment_method';
  static const svMarkDefaultDeliveryAddress =
      '${baseUrl}mark_default_delivery_address';
  static const svPromoCodeList = '${baseUrl}promo_code_list';
  static const svMyOrders = '${baseUrl}my_order';
  static const svMyOrdersDetail = '${baseUrl}my_order_detail';
  static const svNotificationList = '${baseUrl}notification_list';
  static const svNotificationReadAll = '${baseUrl}notification_read_all';
  static const svUpdateProfile = '${baseUrl}update_profile';
  static const svChangePassword = '${baseUrl}change_password';
  static const svForgotPasswordRequest = '${baseUrl}forgot_password_request';
  static const svForgotPasswordVerify = '${baseUrl}forgot_password_verify';
  static const svForgotPasswordSetPassword =
      '${baseUrl}forgot_password_set_password';
}

class KKey {
  static const payload = "payload";
  static const status = "status";
  static const message = "message";
  static const authToken = "auth_token";
  static const name = "name";
  static const email = "email";
  static const mobile = "mobile";
  static const address = "address";
  static const userId = "user_id";
  static const resetCode = "reset_code";
}

class MSG {
  static const enterEmail = "Lütfen geçerli bir email adresi girin";
  static const enterName = "Lütfen isminizi girin";
  static const enterCode = "Lüfen gelen kodu girin";

  static const enterMobile = "Lütfen geçerli bir telefon numarası girin";
  static const enterAddress = "Lütfen adres girin";
  static const enterPassword =
      "Lütfen şifrenizi en az 6 karakter olacak şekilde girin";
  static const enterPasswordNotMatch = "Şifreler eşleşmiyor";
  static const success = "Başarılı";
  static const fail = "Hata";
}
