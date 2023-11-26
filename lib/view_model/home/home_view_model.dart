import 'package:flutter/foundation.dart';
import 'package:flutter_groceries_app/common/globs/globs.dart';
import 'package:flutter_groceries_app/common/service/service_call.dart';
import 'package:flutter_groceries_app/model/offer/offer_product_model.dart';
import 'package:flutter_groceries_app/model/type/type_model.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  final RxList<OfferProductModel> offerArr = <OfferProductModel>[].obs;
  final RxList<OfferProductModel> bestSellingArr = <OfferProductModel>[].obs;
  final RxList<TypeModel> groceriesArr = <TypeModel>[].obs;
  final RxList<OfferProductModel> listArr = <OfferProductModel>[].obs;
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

          var offerDataArr = (payload["offer_list"] as List? ?? []).map((oObj) {
            return OfferProductModel.fromJson(oObj);
          }).toList();
          offerArr.value = offerDataArr;

          var bestSellingDataArr =
              (payload["best_sell_list"] as List? ?? []).map((oObj) {
            return OfferProductModel.fromJson(oObj);
          }).toList();
          bestSellingArr.value = bestSellingDataArr;

          var typeDataArr = (payload["type_list"] as List? ?? []).map((oObj) {
            return TypeModel.fromJson(oObj);
          }).toList();
          groceriesArr.value = typeDataArr;
          
          var listDataArr = (payload["list"] as List? ?? []).map((oObj) {
            return OfferProductModel.fromJson(oObj);
          }).toList();
          listArr.value = listDataArr;

        } else {}
        Get.snackbar(Globs.appName, resObj["message"].toString());
      },
      failure: (err) async {
        Globs.hideHUD();
        Get.snackbar(Globs.appName, err.toString());
        // breakpoint here
      },
    );
  }
}
