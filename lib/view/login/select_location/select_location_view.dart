import 'package:flutter/material.dart';
import 'package:flutter_groceries_app/common/color/color_extension.dart';
import 'package:flutter_groceries_app/common_widgets/dropdown.dart';

class SelectLocationView extends StatefulWidget {
  const SelectLocationView({super.key});

  @override
  State<SelectLocationView> createState() => _SelectLocationViewState();
}

class _SelectLocationViewState extends State<SelectLocationView> {
  TextEditingController txtOTP = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        Container(
          color: Colors.white,
          child: Image.asset(
            "assets/img/bottom_bg.png",
            width: media.width,
            height: media.height,
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
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
          ),
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/img/select_location.png",
                        width: media.width * 0.6),
                    SizedBox(
                      height: media.width * 0.1,
                    ),
                    Text(
                      "Konumuzu seçin",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: media.width * 0.04,
                    ),
                    Text(
                      "Yakınınızdaki marketlere,kampanyalara\nulaşabilmek için konumunuzu seçin",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: media.width * 0.1,
                    ),
                    Dropdown(
                        title: "Bölgeniz",
                        placeholder: "Bölgenizi Seçin",
                        valueList: const ["Bölge 1", "Bölge 2"],
                        didChange: (sObj) {}),
                    SizedBox(
                      height: media.width * 0.07,
                    ),
                    Dropdown(
                        title: "Şehriniz",
                        placeholder: "Şehrinizi seçin",
                        valueList: const ["Şehir 1", "Şehir 2"],
                        didChange: (sObj) {}),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
