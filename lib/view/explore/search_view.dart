import 'package:flutter/material.dart';
import 'package:flutter_groceries_app/common/color/color_extension.dart';
import 'package:flutter_groceries_app/common_widgets/product_cell.dart';

class SearchView extends StatefulWidget {
  const SearchView({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  TextEditingController txtSearch = TextEditingController();

  List searchArr = [
    {
      "name": "Yumurta 1",
      "icon": "assets/img/egg_chicken_red.png",
      "qty": "4",
      "unit": "adet, Fiyat",
      "price": "\$1.99",
    },
    {
      "name": "Yumurta 2",
      "icon": "assets/img/egg_chicken_white.png",
      "qty": "2",
      "unit": "adet, Fiyat",
      "price": "\$1.49",
    },
    {
      "name": "Yumurta 3",
      "icon": "assets/img/egg_pasta.png",
      "qty": "1",
      "unit": "kilo, Fiyat",
      "price": "\$3.99",
    },
    {
      "name": "Yumurta 4",
      "icon": "assets/img/egg_noodles.png",
      "qty": "1",
      "unit": "kilo, Fiyat",
      "price": "\$6.49",
    },
    {
      "name": "Yumurta 5",
      "icon": "assets/img/mayinnars_eggless.png",
      "qty": "4",
      "unit": "adet, Fiyat",
      "price": "\$1.99",
    },
    {
      "name": "Yumurta 6",
      "icon": "assets/img/egg_noodies_new.png",
      "qty": "2",
      "unit": "kilo, Fiyat",
      "price": "\$9.49",
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
        title: Container(
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
              suffixIcon: IconButton(
                onPressed: () {
                  txtSearch.text = "";
                  FocusScope.of(context).requestFocus(FocusNode());
                  setState(() {});
                },
                icon: Image.asset(
                  "assets/img/t_close.png",
                  width: 15,
                  height: 15,
                ),
              ),
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: "Ara",
              hintStyle: TextStyle(
                color: TColor.secondaryText,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
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
        itemCount: searchArr.length,
        itemBuilder: ((context, index) {
          var pObj = searchArr[index] as Map? ?? {};
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
