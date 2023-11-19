import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter_groceries_app/view_model/splash/splash_view_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

typedef ResSucess = Future<void> Function(Map<String, dynamic>);
typedef ResFailure = Future<void> Function(dynamic);

class ServiceCall {
  static void post(
    Map<String, dynamic> parameter,
    String path, {
    bool isToken = false,
    ResSucess? withSuccess,
    ResFailure? failure,
  }) {
    Future(() async {
      try {
        var headers = {'Content-Type': 'application/x-www-form-urlencoded'};
        if (isToken) {
          var token = Get.find<SplashViewModel>().userPayload.value.authToken;
          headers["token"] = token ?? "";
        }
        http
            .post(Uri.parse(path), body: parameter, headers: headers)
            .then((value) {
          if (kDebugMode) {
            print(value.body);
          }
          try {
            var jsonObj =
                json.decode(value.body) as Map<String, dynamic>? ?? {};
            if (withSuccess != null) withSuccess(jsonObj);
          } catch (err) {
            if (failure != null) failure(err.toString());
          }
        });
      } catch (err) {
        if (failure != null) failure(err.toString());
      }
    });
  }
}
