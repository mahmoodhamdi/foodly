import 'package:flutter/material.dart';

ThemeData lightThemeData = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Poppins");
ThemeData darkThemeData = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xFF030C23),
    fontFamily: "Poppins");

ThemeData getTheme(BuildContext context) {
  if (MediaQuery.of(context).platformBrightness == Brightness.dark) {
    return darkThemeData;
  } else {
    return lightThemeData;
  }
}

TextStyle getTextStyle(
    BuildContext context, TextStyle darkTextStyles, TextStyle lightTextStyles) {
  if (MediaQuery.of(context).platformBrightness == Brightness.light) {
    return lightTextStyles;
  } else {
    return darkTextStyles;
  }
}

class DarkTextStyles {
   
}
class LightTextStyles {
}

Color getDividerColor(BuildContext context) {
  return MediaQuery.of(context).platformBrightness == Brightness.light
      ? const Color(0x59BBC4CE)
      : const Color(0x597B80AD);
}
 