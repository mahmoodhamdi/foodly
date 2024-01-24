import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
  static TextStyle kSceondary13w600 = TextStyle(
    color: kSecondary,
    fontSize: 13.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle kGrey13w600 = TextStyle(
    color: kGray,
    fontSize: 13.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle kGrey12w600 = TextStyle(
    color: kGray,
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle kGrey12w400 = TextStyle(
    color: kGray,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle kGreyLight11w400 = TextStyle(
    color: kGrayLight,
    fontSize: 11.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle kDark12w400 = TextStyle(
    color: kDark,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle kDark11w400 = TextStyle(
    color: kDark,
    fontSize: 11.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle kGray11w400 = TextStyle(
    color: kGray,
    fontSize: 11.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle kDark12w500 = TextStyle(
    color: kDark,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle kDark12w600 = TextStyle(
    color: kDark,
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle kLightWhite12w600 = TextStyle(
    color: kLightWhite,
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle kPrimary12w600 = TextStyle(
    color: kPrimary,
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle kGray9w500 = TextStyle(
    color: kGray,
    fontSize: 9.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle kGray8w400 = TextStyle(
    color: kGray,
    fontSize: 8.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle kGray9w400 = TextStyle(
    color: kGray,
    fontSize: 9.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle kDark16Bold = TextStyle(
    color: kDark,
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle textStyle35 = TextStyle(
    fontSize: 35.sp,
  );
}

Color getDividerColor(BuildContext context) {
  return MediaQuery.of(context).platformBrightness == Brightness.light
      ? const Color(0x59BBC4CE)
      : const Color(0x597B80AD);
}
