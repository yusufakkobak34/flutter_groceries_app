import 'package:flutter_groceries_app/common/globs/globs.dart';
import 'package:flutter_groceries_app/model/user/user_payload_model.dart';
import 'package:flutter_groceries_app/view/login/welcome/welcome_view.dart';
import 'package:flutter_groceries_app/view/maintab_view/main_tab_view.dart';
import 'package:get/get.dart';

class SplashViewModel extends GetxController {
  final userPayload = UserPayloadModel().obs;

  void loadView() async {
    await Future.delayed(const Duration(seconds: 3));

    if (Globs.udValueBool(Globs.userLogin)) {
      userPayload.value =
          UserPayloadModel.fromJson(Globs.udValue(Globs.userPayload));
      Get.to(() => const MainTabView());
    } else {
      Get.to(() => const WelcomeView());
    }
  }

  void logout() async {
    userPayload.value = UserPayloadModel();
    Globs.udBoolSet(false, Globs.userLogin);
    Get.to(() => const WelcomeView());
  }
}
