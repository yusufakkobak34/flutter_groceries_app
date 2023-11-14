import 'package:flutter/material.dart';
import 'package:flutter_groceries_app/common/color/color_extension.dart';
import 'package:flutter_groceries_app/common_widgets/favourite_row.dart';
import 'package:flutter_groceries_app/common_widgets/round_button.dart';

class FavouriteView extends StatefulWidget {
  const FavouriteView({super.key});

  @override
  State<FavouriteView> createState() => _FavouriteViewState();
}

class _FavouriteViewState extends State<FavouriteView> {
  List listArr = [
    {
      "name": "Diyet Kola",
      "icon": "assets/img/diet_coke.png",
      "qty": "355",
      "unit": "ml, Fiyat",
      "price": "1.99",
    },
    {
      "name": "Sprite",
      "icon": "assets/img/sprite_can.png",
      "qty": "325",
      "unit": "ml, Fiyat",
      "price": "1.49",
    },
    {
      "name": "Elma Suyu",
      "icon": "assets/img/juice_apple_grape.png",
      "qty": "2",
      "unit": "L, Fiyat",
      "price": "15.99",
    },
    {
      "name": "Portakal Suyu",
      "icon": "assets/img/orenge_juice.png",
      "qty": "2",
      "unit": "L, Fiyat",
      "price": "15.49",
    },
    {
      "name": "Coca Cola",
      "icon": "assets/img/cocacola_can.png",
      "qty": "325",
      "unit": "ml, Fiyat",
      "price": "4.99",
    },
    {
      "name": "Pepsi",
      "icon": "assets/img/pepsi_can.png",
      "qty": "325",
      "unit": "ml, Fiyat",
      "price": "4.49",
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
          "Favoriler",
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
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            itemCount: listArr.length,
            separatorBuilder: (context, index) => const Divider(
              color: Colors.black26,
              height: 1,
            ),
            itemBuilder: (context, index) {
              var pObj = listArr[index] as Map? ?? {};
              return FavouriteRow(
                pObj: pObj,
                onPressed: () {},
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RoundButton(
                  title: "Hepsini Sepete Ekle",
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
