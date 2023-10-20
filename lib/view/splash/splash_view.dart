import 'package:flutter/material.dart';
import 'package:flutter_groceries_app/common/color/color_extension.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
  }

  void fireOpenApp() async {
    await Future.delayed(const Duration(seconds: 3));
  }

  void startApp() async {
    
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: TColor.primary,
      body: Stack(
        children: [
          Image.asset(
            "assets/img/splash_logo.png",
            width: media.width * 0.5,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
