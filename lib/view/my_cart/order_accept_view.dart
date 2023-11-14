import 'package:flutter/material.dart';
import 'package:flutter_groceries_app/common/color/color_extension.dart';
import 'package:flutter_groceries_app/common_widgets/round_button.dart';

class OrderAcceptView extends StatefulWidget {
  const OrderAcceptView({super.key});

  @override
  State<OrderAcceptView> createState() => _OrderAcceptViewState();
}

class _OrderAcceptViewState extends State<OrderAcceptView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(
            "assets/img/bottom_bg.png",
            width: media.width,
            height: media.height,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  const Spacer(),
                  Image.asset(
                    "assets/img/order_accpeted.png",
                    width: media.width * 0.7,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Siparişiniz Alındı",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Siparişiniz en kısa sürede hazırlanıp kargoya verilecektir.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  RoundButton(
                    title: "Siparişi Takip Et",
                    onPressed: () {},
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Alışverişe Devam Et",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
