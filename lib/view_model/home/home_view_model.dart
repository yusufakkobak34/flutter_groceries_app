import 'package:flutter/foundation.dart';
import 'package:flutter_groceries_app/common/globs/globs.dart';
import 'package:flutter_groceries_app/common/service/service_call.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  final isLoading = false.obs;
  @override
  void onInit() {
    super.onInit();
    if (kDebugMode) {
      print("HomeViewModel onInit");
    }
  }

  void serviceCallHome() {
    Globs.showHUD();
    ServiceCall.post(
      {},
      SVKey.svHome,
      isToken: true,
      withSuccess: (resObj) async {
        Globs.hideHUD();
        if (resObj[KKey.status] == "1") {
          var payload = resObj[KKey.payload] as Map? ?? {};
        } else {}
        Get.snackbar(Globs.appName, resObj["message"].toString());
      }, failure: (err) async {
        Globs.hideHUD();
        Get.snackbar(Globs.appName, err.toString());
        // breakpoint here
      },
    );
  }
}
