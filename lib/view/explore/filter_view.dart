import 'package:flutter/material.dart';
import 'package:flutter_groceries_app/common/color/color_extension.dart';
import 'package:flutter_groceries_app/common_widgets/round_button.dart';

class FilterView extends StatefulWidget {
  const FilterView({super.key});

  @override
  State<FilterView> createState() => _FilterViewState();
}

class _FilterViewState extends State<FilterView> {
  List filterCatArr = [
    {
      "id": "1",
      "name": "Kahvaltılık",
    },
    {
      "id": "2",
      "name": "Makarna",
    },
    {
      "id": "3",
      "name": "Cips ve Atıştırmalıklar",
    },
    {
      "id": "4",
      "name": "Fast Food",
    },
  ];

  List filterBrandArr = [
    {
      "id": "1",
      "name": "Kişisel Koleksiyon",
    },
    {
      "id": "2",
      "name": "Coca Cola",
    },
    {
      "id": "3",
      "name": "Ifad",
    },
    {
      "id": "4",
      "name": "Kazi Farmas",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset(
            "assets/img/close.png",
            width: 20,
            height: 20,
          ),
        ),
        title: Text(
          "Filtrele",
          style: TextStyle(
            color: TColor.primaryText,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Color(0xffF2F3F2),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        "Kategoriler",
                        style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Column(
                      children: filterCatArr.map((fObj) {
                        return Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/img/checkbox.png",
                                width: 25,
                                height: 25,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: Text(
                                  fObj["name"],
                                  style: TextStyle(
                                    color: TColor.primaryText,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      }).toList(),
                    )
                  ],
                ),
              ),
            ),
            RoundButton(title: "Filtreyi Uygula", onPressed: () {})
          ],
        ),
      ),
    );
  }
}
