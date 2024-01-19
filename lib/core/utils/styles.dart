import 'package:flutter/material.dart';
import 'package:foodly/core/utils/constants/constants.dart';

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

class DarkTextStyles {}

class LightTextStyles {
  static const TextStyle kSceondary13w600 = TextStyle(
    color: kSecondary,
    fontSize: 13,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle kGrey13w600 = TextStyle(
    color: kGray,
    fontSize: 13,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle kGrey12w600 = TextStyle(
    color: kGray,
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle kGrey12w400 = TextStyle(
    color: kGray,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle kGreyLight11w400 = TextStyle(
    color: kGrayLight,
    fontSize: 11,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle kDark12w400 = TextStyle(
    color: kDark,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle kDark12w500 = TextStyle(
    color: kDark,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle kGray9w500 = TextStyle(
    color: kGray,
    fontSize: 9,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle kDark16Bold = TextStyle(
    color: kDark,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle textStyle35 = TextStyle(
    fontSize: 35,
  );
}

Color getDividerColor(BuildContext context) {
  return MediaQuery.of(context).platformBrightness == Brightness.light
      ? const Color(0x59BBC4CE)
      : const Color(0x597B80AD);
}
