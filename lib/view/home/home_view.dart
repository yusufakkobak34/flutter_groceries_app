import 'package:flutter/material.dart';
import 'package:flutter_groceries_app/common/color/color_extension.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController txtSearch = TextEditingController();

  List exclusiveOfferArr = [
    {
      "name": "Organik Muz",
      "icon": "assets/img/banana.png",
      "qty": "7",
      "unit": "adet,fiyat",
      "price": "\$1.99"
    },
    {
      "name": "Kırmızı Elma",
      "icon": "assets/img/apple.png",
      "qty": "7",
      "unit": "adet,fiyat",
      "price": "\$1.99"
    },
  ];

  List bestSellingArr = [
    {
      "name": "Acı Biber",
      "icon": "assets/img/bell_pepper_red.png",
      "qty": "1",
      "unit": "gram,fiyat",
      "price": "\$2.99"
    },
    {
      "name": "Zencefil",
      "icon": "assets/img/ginger.png",
      "qty": "250",
      "unit": "gram,fiyat",
      "price": "\$3.99"
    }
  ];

  List groceriesArr = [
    {
      "name": "Bakliyat",
      "icon": "assets/img/pulses.png",
      "color": Color(0xffF8A44C),
    },
    {
      "name": "Pirinç",
      "icon": "assets/img/pulses.png",
      "color": Color(0xff53B175),
    }
  ];

  List listArr = [
    {
      "name": "Biftek",
      "icon": "assets/img/beef_bone.png",
      "qty": "1",
      "unit": "kg,fiyat",
      "price": "\$4.99"
    },
    {
      "name": "Tavuk",
      "icon": "assets/img/broiler_chicken.png",
      "qty": "1",
      "unit": "kg,fiyat",
      "price": "\$4.99"
    }
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/img/color_logo.png", width: 25),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/img/location.png",
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Istanbul, Turkiye",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
