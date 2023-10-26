import 'package:flutter/material.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);

    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  "assets/img/bottom_bg.png",
                  width: media.width,
                  height: media.height,
                  fit: BoxFit.cover,
                )
              ],
            ),
            Image.asset(
              "assets/img/sign_in_top.png",
              width: media.width,
            )
          ],
        ));
  }
}
