import 'package:flutter/material.dart';

class TColor {
  static Color get primary => const Color(0XFF53B175);
  static Color get primaryText => const Color(0XFF030303);
  static Color get secondaryText => const Color(0XFF828282);
  static Color get textTitle => const Color(0XFF7C7C7C);
  static Color get placeholder => const Color(0XFFB1B1B1);
  static Color get darkGray => const Color(0xff4c4f4d);
}

extension HexColor on Color {
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

 String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
