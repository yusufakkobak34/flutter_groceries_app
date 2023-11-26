import 'package:flutter/material.dart';
import 'package:flutter_groceries_app/common/color/color_extension.dart';
import 'package:flutter_groceries_app/common_widgets/category_cell.dart';
import 'package:flutter_groceries_app/common_widgets/product_cell.dart';
import 'package:flutter_groceries_app/common_widgets/section_view.dart';
import 'package:flutter_groceries_app/view/home/product_details_view.dart';
import 'package:flutter_groceries_app/view_model/home/home_view_model.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController txtSearch = TextEditingController();

  final homeVM = Get.put(HomeViewModel());

  // List exclusiveOfferArr = [
  //   {
  //     "name": "Organik Muz",
  //     "icon": "assets/img/banana.png",
  //     "qty": "7",
  //     "unit": "adet,fiyat",
  //     "price": "\$1.99"
  //   },
  //   {
  //     "name": "Kırmızı Elma",
  //     "icon": "assets/img/apple.png",
  //     "qty": "7",
  //     "unit": "adet,fiyat",
  //     "price": "\$1.99"
  //   },
  // ];

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
      "color": const Color(0xffF8A44C),
    },
    {
      "name": "Pirinç",
      "icon": "assets/img/rice.png",
      "color": const Color(0xff53B175),
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
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
                    width: 16,
                    height: 16,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Istanbul, Turkiye",
                    style: TextStyle(
                      color: TColor.darkGray,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 52,
                  decoration: BoxDecoration(
                    color: const Color(0xffF2F3F2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: TextField(
                    controller: txtSearch,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 16),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Image.asset(
                          "assets/img/search.png",
                          width: 20,
                          height: 20,
                        ),
                      ),
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: "Mağaza Ara",
                      hintStyle: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.maxFinite,
                  height: 115,
                  decoration: BoxDecoration(
                    color: const Color(0xffF2F3F2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: Image.asset("assets/img/banner_top.png"),
                ),
              ),
              SectionView(
                title: "Özel Teklif",
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                onPressed: () {},
              ),
              SizedBox(
                height: 230,
                child: Obx(() => ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    itemCount: homeVM.offerArr.length,
                    itemBuilder: (context, index) {
                      var pObj = exclusiveOfferArr[index] as Map? ?? {};
                      return ProductCell(
                        pObj: pObj,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ProductDetails()));
                        },
                        onCart: () {},
                      );
                    })),
              ),
              SectionView(
                title: "Çok Satanlar",
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                onPressed: () {},
              ),
              SizedBox(
                height: 230,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    itemCount: bestSellingArr.length,
                    itemBuilder: (context, index) {
                      var pObj = bestSellingArr[index] as Map? ?? {};
                      return ProductCell(
                        pObj: pObj,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ProductDetails()));
                        },
                        onCart: () {},
                      );
                    }),
              ),
              SectionView(
                title: "Bakliyat",
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                onPressed: () {},
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    itemCount: groceriesArr.length,
                    itemBuilder: (context, index) {
                      var pObj = groceriesArr[index] as Map? ?? {};
                      return CategoryCell(
                        pObj: pObj,
                        onPressed: () {},
                      );
                    }),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 230,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    itemCount: listArr.length,
                    itemBuilder: (context, index) {
                      var pObj = listArr[index] as Map? ?? {};
                      return CategoryCell(
                        pObj: pObj,
                        onPressed: () {},
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
