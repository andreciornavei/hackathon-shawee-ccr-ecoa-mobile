import 'package:flutter/material.dart';

class AppColors {
  // ignore: non_constant_identifier_names
  static final MaterialColor TRANSPARENT = _factoryColor(0x00ffffff);
  // ignore: non_constant_identifier_names
  static final MaterialColor PRIMARY_COLOR = _factoryColor(0xff2B3340);
  // ignore: non_constant_identifier_names
  static final MaterialColor BACKGROUND_COLOR = _factoryColor(0xffF6F5FA);
  // ignore: non_constant_identifier_names
  static final MaterialColor LIGHT = _factoryColor(0xfff4f4f8);
  // ignore: non_constant_identifier_names
  static final MaterialColor LIGHT_GREY = _factoryColor(0xffd8d8d8);
  // ignore: non_constant_identifier_names
  static MaterialColor MUTE = AppColors._factoryColor(0xFF9EA4B9);
  // ignore: non_constant_identifier_names
  static final MaterialColor DARK = _factoryColor(0xff3a3a3a);
  // ignore: non_constant_identifier_names
  static final MaterialColor WHITE = _factoryColor(0xffffffff);
  // ignore: non_constant_identifier_names
  static final MaterialColor GREEN = _factoryColor(0xff349e40);
  // ignore: non_constant_identifier_names
  static final MaterialColor LIGHT_GREEN = _factoryColor(0xff3AB54A);
  // ignore: non_constant_identifier_names
  static final MaterialColor SHADOW = _factoryColor(0xffE7EAF0);
  // ignore: non_constant_identifier_names
  static final MaterialColor PURPLE = _factoryColor(0xff2A2362);
  // ignore: non_constant_identifier_names
  static final MaterialColor ECOAR_ORANGE = _factoryColor(0xffFF9166);
  // ignore: non_constant_identifier_names
  static final MaterialColor ECOAR_PURPLE = _factoryColor(0xff8655F2);
  // ignore: non_constant_identifier_names
  static final MaterialColor ECOAR_BLUE = _factoryColor(0xff3DD2E9);
  // ignore: non_constant_identifier_names
  static final MaterialColor ECOAR_GREEN = _factoryColor(0xff36DB89);
  // ignore: non_constant_identifier_names
  static final MaterialColor ECOAR_YELLOW = _factoryColor(0xffFFB84C);
  // ignore: non_constant_identifier_names
  static final MaterialColor ECOAR_RED = _factoryColor(0xffC72A28);  

  static MaterialColor hex(String hex) =>
      AppColors._factoryColor(AppColors._getColorHexFromStr(hex));

  static MaterialColor _factoryColor(int color) {
    return MaterialColor(color, <int, Color>{
      50: Color(color),
      100: Color(color),
      200: Color(color),
      300: Color(color),
      400: Color(color),
      500: Color(color),
      600: Color(color),
      700: Color(color),
      800: Color(color),
      900: Color(color),
    });
  }

  static int _getColorHexFromStr(String colorStr) {
    colorStr = "FF" + colorStr;
    colorStr = colorStr.replaceAll("#", "");
    int val = 0;
    int len = colorStr.length;
    for (int i = 0; i < len; i++) {
      int hexDigit = colorStr.codeUnitAt(i);
      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 65 && hexDigit <= 70) {
        // A..F
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 97 && hexDigit <= 102) {
        // a..f
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      } else {
        val = 0xFFFFFFFF;
      }
    }
    return val;
  }
}
