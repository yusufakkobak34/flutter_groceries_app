import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_groceries_app/common/globs/globs.dart';
import 'package:flutter_groceries_app/common/service/service_call.dart';
import 'package:flutter_groceries_app/view/maintab_view/main_tab_view.dart';
import 'package:get/get.dart';

class LoginViewModel extends GetxController {
  final txtEmail = TextEditingController().obs;
  final txtPassword = TextEditingController().obs;
  final isShowPassword = false.obs;
  final isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    if (kDebugMode) {
      print("Login View Model init");
    }
    txtEmail.value.text = "testuser@gmail.com";
    txtPassword.value.text = "123456";
  }

  void serviceCallLogin() {
    Globs.showHUD();
    ServiceCall.post({
      "email": txtEmail.value.text,
      "password": txtPassword.value.text,
      "device_token": "",
    }, SVKey.svLogin, withSuccess: (resObj) async {
      Globs.hideHUD();

      if (resObj[KKey.status] == "1") {
        var payload = resObj[KKey.payload] as Map? ?? {};
        Globs.udSet(payload, Globs.userPayload);
        Globs.udBoolSet(true, Globs.userLogin);
        Get.delete<LoginViewModel>();
        Get.to(() => const MainTabView());
      } else {
        //
      }

      Get.snackbar(Globs.appName, resObj["message"].toString());
    }, failure: (err) async {
      Globs.hideHUD();
      Get.snackbar(Globs.appName, err.toString());
    });
  }

  void showPassword() {
    isShowPassword.value = !isShowPassword.value;
  }
}
