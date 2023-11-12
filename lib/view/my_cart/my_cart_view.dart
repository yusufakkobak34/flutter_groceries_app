import 'package:flutter/material.dart';
import 'package:flutter_groceries_app/common/color/color_extension.dart';
import 'package:flutter_groceries_app/common_widgets/round_button.dart';

class MyCartView extends StatefulWidget {
  const MyCartView({super.key});

  @override
  State<MyCartView> createState() => _MyCartViewState();
}

class _MyCartViewState extends State<MyCartView> {
  List cartArr = [
    {
      "name": "Acı Biber",
      "icon": "assets/img/bell_pepper_red.png",
      "qty": "1",
      "unit": "1kg,fiyat",
      "price": 1.99,
    },
    {
      "name": "Yumurta",
      "icon": "assets/img/egg_chicken_red.png",
      "qty": "1",
      "unit": "4adet,fiyat",
      "price": 1.99,
    },
    {
      "name": "Muz",
      "icon": "assets/img/banana.png",
      "qty": "1",
      "unit": "7adet,fiyat",
      "price": 1.99,
    },
    {
      "name": "Zencefil",
      "icon": "assets/img/ginger.png",
      "qty": "1",
      "unit": "250g,fiyat",
      "price": 3.99,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        centerTitle: true,
        title: Text(
          "Sepetim",
          style: TextStyle(
            color: TColor.primaryText,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ListView.separated(
            padding: const EdgeInsets.all(20.0),
            itemCount: cartArr.length,
            separatorBuilder: (context, index) => const Divider(
              color: Colors.black26,
              height: 1,
            ),
            itemBuilder: (context, index) {
              return Container(
                height: 140,
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RoundButton(
                  title: "Ödemeye Geç",
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
