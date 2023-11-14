import 'package:flutter/material.dart';
import 'package:flutter_groceries_app/common/color/color_extension.dart';
import 'package:flutter_groceries_app/common_widgets/checkout_row.dart';
import 'package:flutter_groceries_app/common_widgets/round_button.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({super.key});

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sipariş",
                  style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    "assets/img/close.png",
                    width: 15,
                    height: 15,
                    color: TColor.primaryText,
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.black26,
            height: 1,
          ),
          CheckoutRow(
            title: "Teslimat",
            value: "Yöntem Seçin",
            onPressed: () {},
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  children: [
                    Text(
                      "Ödeme",
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    Image.asset(
                      "assets/img/next.png",
                      height: 15,
                      color: TColor.primaryText,
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.black26,
                height: 1,
              ),
            ],
          ),
          CheckoutRow(
            title: "İndirim Kodu",
            value: "Kod Girin",
            onPressed: () {},
          ),
          CheckoutRow(
            title: "Toplam Tutar",
            value: "\$10.96",
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                children: [
                  const TextSpan(
                    text:
                        "Devam ederek kullanıcı şunları kabul etmiş olursunuz\n",
                  ),
                  TextSpan(
                    text: "Kullanıcı",
                    style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const TextSpan(
                    text: " ve ",
                  ),
                  TextSpan(
                    text: "Gizlilik Sözleşmeleri",
                    style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          RoundButton(
            title: "Sipariş Et",
            onPressed: () {},
          ),
          const SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
