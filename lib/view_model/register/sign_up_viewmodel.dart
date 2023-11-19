import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_groceries_app/common/globs/globs.dart';
import 'package:flutter_groceries_app/common/service/service_call.dart';
import 'package:flutter_groceries_app/view/maintab_view/main_tab_view.dart';
import 'package:get/get.dart';

class SignUpViewModel extends GetxController {
  final txtUsername = TextEditingController().obs;
  final txtEmail = TextEditingController().obs;
  final txtPassword = TextEditingController().obs;
  final isShowPassword = false.obs;
  final isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    if (kDebugMode) {
      print("SignUp ViewModel init");
    }
    //txtUsername.value.text = "Demo User";
    //txtEmail.value.text = "user1@gmail.com";
    //txtPassword.value.text = "123456";
  }

  void serviceCallSignUp() {
    if (txtUsername.value.text.isEmpty) {
      Get.snackbar(Globs.appName, "Lütfen kullanıcı adı girin");
      return;
    }

    if (!GetUtils.isEmail(txtEmail.value.text)) {
      Get.snackbar(Globs.appName, "Lütfen geçerli bir email adresi girin");
    }

    if (txtPassword.value.text.length < 6) {
      Get.snackbar(Globs.appName, "Lütfen en az 6 karakterli bir şifre girin");
      return;
    }

    Globs.showHUD();
    ServiceCall.post({
      "username": txtUsername.value.text,
      "email": txtEmail.value.text,
      "password": txtPassword.value.text,
      "device_token": "",
    }, SVKey.svSignUp, withSuccess: (resObj) async {
      Globs.hideHUD();
      if (resObj[KKey.status] == "1") {
        var payload = resObj[KKey.payload] as Map? ?? {};
        Globs.udSet(payload, Globs.userPayload);
        Globs.udBoolSet(true, Globs.userLogin);
        Get.delete<SignUpViewModel>();
        Get.to(() => const MainTabView());
      } else {}
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
