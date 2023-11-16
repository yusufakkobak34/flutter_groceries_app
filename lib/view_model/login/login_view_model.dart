import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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
      print("Login View Model init.");
    }
    txtEmail.value.text = "test@gmail.com";
    txtPassword.value.text = "123456";
  }

  void serviceCallLogin() {}

  void showPassword() {
    isShowPassword.value = !isShowPassword.value;
  }
}
