import 'package:flutter_groceries_app/common/globs/globs.dart';
import 'package:flutter_groceries_app/model/user/user_payload_model.dart';
import 'package:get/get.dart';

class SplashViewModel extends GetxController {
  final userPayload = UserPayloadModel().obs;

  void loadView() async {
    if (Globs.udValueBool(Globs.userLogin)) {
      userPayload.value =
          UserPayloadModel.fromJson(Globs.udValue(Globs.userPayload));
    }
  }
}
