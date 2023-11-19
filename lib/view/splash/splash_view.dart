import 'package:flutter/material.dart';
import 'package:flutter_groceries_app/common/color/color_extension.dart';
import 'package:flutter_groceries_app/view_model/splash/splash_view_model.dart';
import 'package:get/get.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  final splashVM = Get.put(SplashViewModel());

  @override
  void initState() {
    super.initState();
    splashVM.loadView();
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: TColor.primary,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/img/splash_logo.png",
              width: media.width * 0.5,
            ),
          ),
        ],
      ),
    );
  }
}
