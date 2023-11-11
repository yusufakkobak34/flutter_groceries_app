import 'package:flutter/material.dart';
import 'package:flutter_groceries_app/common/color/color_extension.dart';
import 'package:flutter_groceries_app/common_widgets/explore_cell.dart';

class ExploreView extends StatefulWidget {
  const ExploreView({super.key});

  @override
  State<ExploreView> createState() => _ExploreViewState();
}

class _ExploreViewState extends State<ExploreView> {
  TextEditingController txtSearch = TextEditingController();

  List findProductArr = [
    {
      "name": "Taze Meyve & Sebze",
      "icon": "assets/img/frash_fruits.png",
      "color": const Color(0xff53B175),
    },
    {
      "name": "Yağ ve Yağ Ürünleri",
      "icon": "assets/img/cooking_oil.png",
      "color": const Color(0xffF8A44C),
    },
    {
      "name": "Et ve Balık",
      "icon": "assets/img/meat_fish.png",
      "color": const Color(0xffF7A593),
    },
    {
      "name": "Fırın ürünleri ve atıştırmalıklar",
      "icon": "assets/img/bakery_snacks.png",
      "color": const Color(0xffD3B0E0),
    },
    {
      "name": "Süt Ürünleri ve Yumurta",
      "icon": "assets/img/dairy_eggs.png",
      "color": const Color(0xFFFDE598),
    },
    {
      "name": "İçecekler",
      "icon": "assets/img/beverages.png",
      "color": const Color(0xffB7DFF5),
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
        title: Text(
          "Ürün Ara",
          style: TextStyle(
            color: TColor.primaryText,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                color: const Color(0xffF2F3F2),
                borderRadius: BorderRadius.circular(15),
              ),
              alignment: Alignment.center,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Image.asset(
                      "assets/img/search.png",
                      width: 20,
                      height: 20,
                    ),
                  ),
                  Text(
                    "Mağaza Ara",
                    style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
              ),
              itemCount: findProductArr.length,
              itemBuilder: ((context, index) {
                var pObj = findProductArr[index] as Map? ?? {};
                return ExploreCell(
                  pObj: pObj,
                  onPressed: () {},
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
