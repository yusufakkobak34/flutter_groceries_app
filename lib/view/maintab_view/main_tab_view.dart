import 'package:flutter/material.dart';
import 'package:flutter_groceries_app/common/color/color_extension.dart';
import 'package:flutter_groceries_app/view/explore/explore_view.dart';
import 'package:flutter_groceries_app/view/favourite/favourite_view.dart';
import 'package:flutter_groceries_app/view/home/home_view.dart';
import 'package:flutter_groceries_app/view/my_cart/my_cart_view.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView>
    with SingleTickerProviderStateMixin {
  TabController? controller;
  int selectTab = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 5, vsync: this);
    controller?.addListener(() {
      selectTab = controller?.index ?? 0;
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: controller,
        children: [
          const HomeView(),
          const ExploreView(),
          const MyCartView(),
          const FavouriteView(),
          Container(),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 3,
                offset: Offset(0, -2),
              ),
            ]),
        child: BottomAppBar(
          color: Colors.transparent,
          elevation: 0,
          child: TabBar(
            controller: controller,
            indicatorColor: Colors.transparent,
            indicatorWeight: 1,
            labelColor: TColor.primary,
            labelStyle: TextStyle(
              color: TColor.primary,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
            unselectedLabelColor: TColor.primaryText,
            unselectedLabelStyle: TextStyle(
              color: TColor.primaryText,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
            tabs: [
              Tab(
                text: "Alışveriş",
                icon: Image.asset(
                  "assets/img/store_tab.png",
                  width: 25,
                  height: 25,
                  color: selectTab == 0 ? TColor.primary : TColor.primaryText,
                ),
              ),
              Tab(
                text: "Keşfet",
                icon: Image.asset(
                  "assets/img/explore_tab.png",
                  width: 25,
                  height: 25,
                  color: selectTab == 1 ? TColor.primary : TColor.primaryText,
                ),
              ),
              Tab(
                text: "Sepet",
                icon: Image.asset(
                  "assets/img/cart_tab.png",
                  width: 25,
                  height: 25,
                  color: selectTab == 2 ? TColor.primary : TColor.primaryText,
                ),
              ),
              Tab(
                text: "Favoriler",
                icon: Image.asset(
                  "assets/img/fav_tab.png",
                  width: 25,
                  height: 25,
                  color: selectTab == 3 ? TColor.primary : TColor.primaryText,
                ),
              ),
              Tab(
                text: "Hesabım",
                icon: Image.asset(
                  "assets/img/account_tab.png",
                  width: 25,
                  height: 25,
                  color: selectTab == 4 ? TColor.primary : TColor.primaryText,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
