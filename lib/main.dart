import 'package:flutter/material.dart';
import 'package:flutter_groceries_app/common/color/color_extension.dart';
import 'package:flutter_groceries_app/view/maintab_view/main_tab_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? prefs;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Online Groceries',
      theme: ThemeData(
        fontFamily: "Gilroy",
        colorScheme: ColorScheme.fromSeed(seedColor: TColor.primary),
        useMaterial3: false,
      ),
      home: const MainTabView(),
    );
  }
}

