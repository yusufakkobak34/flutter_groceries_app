import 'package:flutter/material.dart';
import 'package:flutter_groceries_app/common/color/color_extension.dart';
import 'package:flutter_groceries_app/common_widgets/account_row.dart';

class AccountView extends StatefulWidget {
  const AccountView({super.key});

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: Image.asset(
                        "assets/img/u1.png",
                        width: 60,
                        height: 60,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Demo User",
                                style: TextStyle(
                                  color: TColor.primaryText,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Icon(
                                Icons.edit,
                                color: TColor.primary,
                                size: 15,
                              )
                            ],
                          ),
                          Text(
                            "demo@demo.com",
                            style: TextStyle(
                              color: TColor.secondaryText,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Divider(
                color: Colors.black26,
                height: 1,
              ),
              AccountRow(
                title: "Siparişler",
                icon: "assets/img/a_order.png",
                onPressed: () {},
              ),
              AccountRow(
                title: "Kişisel Bilgilerim",
                icon: "assets/img/a_my_detail.png",
                onPressed: () {},
              ),
              AccountRow(
                title: "Adreslerim",
                icon: "assets/img/a_delivery_address.png",
                onPressed: () {},
              ),
              AccountRow(
                title: "Ödeme Yöntemlerim",
                icon: "assets/img/paymenth_methods.png",
                onPressed: () {},
              ),
              AccountRow(
                title: "Kuponlarım",
                icon: "assets/img/a_promocode.png",
                onPressed: () {},
              ),
              AccountRow(
                title: "Bildirimlerim",
                icon: "assets/img/a_noitification.png",
                onPressed: () {},
              ),
              AccountRow(
                title: "Yardım",
                icon: "assets/img/a_help.png",
                onPressed: () {},
              ),
              AccountRow(
                title: "Hakkında",
                icon: "assets/img/a_about.png",
                onPressed: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      height: 60,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(19)),
                      minWidth: double.maxFinite,
                      elevation: 0.1,
                      color: const Color(0xffF2F3F2),
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Çıkış Yap",
                                style: TextStyle(
                                  color: TColor.primary,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Image.asset(
                                "assets/img/logout.png",
                                width: 20,
                                height: 20,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
