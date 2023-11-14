import 'package:flutter/material.dart';
import 'package:flutter_groceries_app/common/color/color_extension.dart';
import 'package:flutter_groceries_app/common_widgets/round_button.dart';

class OrderErrorView extends StatelessWidget {
  const OrderErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Container(
      width: media.width * 0.9,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Image.asset(
                  "assets/img/close.png",
                  width: 20,
                  height: 20,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            "assets/img/order_fail.png",
            width: media.width * 0.6,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Oops! Sipariş başarısız oldu.",
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
            "Siparişiniz alınırken bir hata oluştu",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: TColor.secondaryText,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          RoundButton(
            title: "Lütfen tekrar deneyin",
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
          ),
        ],
      ),
    );
  }
}
