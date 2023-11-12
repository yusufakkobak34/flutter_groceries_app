import 'package:flutter/material.dart';
import 'package:flutter_groceries_app/common/color/color_extension.dart';
import 'package:flutter_groceries_app/common_widgets/product_cell.dart';

class ExploreDetailView extends StatefulWidget {
  final Map eObj;
  const ExploreDetailView({
    Key? key,
    required this.eObj,
  }) : super(key: key);

  @override
  State<ExploreDetailView> createState() => _ExploreDetailViewState();
}

class _ExploreDetailViewState extends State<ExploreDetailView> {
  TextEditingController txtSearch = TextEditingController();

  List listArr = [
    {
      "name": "Diyet Kola",
      "icon": "assets/img/diet_coke.png",
      "qty": "355",
      "unit": "ml, Fiyat",
      "price": "\$1.99",
    },
    {
      "name": "Sprite",
      "icon": "assets/img/sprite_can.png",
      "qty": "325",
      "unit": "ml, Fiyat",
      "price": "\$1.49",
    },
    {
      "name": "Elma Suyu",
      "icon": "assets/img/juice_apple_grape.png",
      "qty": "2",
      "unit": "L, Fiyat",
      "price": "\$15.99",
    },
    {
      "name": "Portakal Suyu",
      "icon": "assets/img/orenge_juice.png",
      "qty": "2",
      "unit": "L, Fiyat",
      "price": "\$15.49",
    },
    {
      "name": "Coca Cola",
      "icon": "assets/img/cocacola_can.png",
      "qty": "325",
      "unit": "ml, Fiyat",
      "price": "\$4.99",
    },
    {
      "name": "Pepsi",
      "icon": "assets/img/pepsi_can.png",
      "qty": "325",
      "unit": "ml, Fiyat",
      "price": "\$4.49",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset(
            "assets/img/back.png",
            width: 20,
            height: 20,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/img/filter_ic.png",
              width: 20,
              height: 20,
            ),
          )
        ],
        title: Text(
          widget.eObj["name"].toString(),
          style: TextStyle(
            color: TColor.primaryText,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
        itemCount: listArr.length,
        itemBuilder: ((context, index) {
          var pObj = listArr[index] as Map? ?? {};
          return ProductCell(
            pObj: pObj,
            margin: 8,
            weight: double.maxFinite,
            onPressed: () {},
            onCart: () {},
          );
        }),
      ),
    );
  }
}
