import 'package:flutter/material.dart';

import '../colors/app_colors.dart';

class CustomTextStyle {
  static TextStyle largeBoldStyle = const TextStyle(
    fontSize: 42,
    fontFamily: "Josefin Sans",
    fontWeight: FontWeight.w500,
  );
  static TextStyle standardStyleItalic = const TextStyle(
    fontSize: 32,
    fontFamily: "Josefin Sans",
    fontStyle: FontStyle.italic,
  );
  static TextStyle standardStyle = TextStyle(
    fontSize: 32,
    // fontFamily: "Montserrat",
    color: AppColor.numberColor,
  );
  static TextStyle standardStyleBold = const TextStyle(
    fontSize: 32,
    // fontFamily: "Josefin Sans",
    // color: AppColor.primaryColor,
    fontWeight: FontWeight.bold
  );
  static TextStyle littleStyle = const TextStyle(
    fontSize: 24,
    // fontFamily: "Josefin Sans",
  );
  static TextStyle littleStylelineThroughItalic = TextStyle(
    decoration: TextDecoration.lineThrough,
    fontStyle: FontStyle.italic,
    fontSize: 24,
    color: AppColor.errorColor,
    fontFamily: "Josefin Sans",
  );
  static TextStyle littleStyleUnderlineItalic = TextStyle(
    decoration: TextDecoration.underline,
    fontStyle: FontStyle.italic,
    fontSize: 24,
    color: AppColor.errorColor,
    fontFamily: "Josefin Sans",
  );
  static TextStyle littleStyleGreenItalic = TextStyle(
    fontStyle: FontStyle.italic,
    fontSize: 24,
    fontFamily: "Josefin Sans",
    color: AppColor.mainColor,
  );
  static TextStyle littleStyleBold = const TextStyle(
    fontSize: 24,
    fontFamily: "Josefin Sans",
    fontWeight: FontWeight.bold,
  );
  static TextStyle littleStyleItalic = const TextStyle(
    fontSize: 24,
    fontFamily: "Josefin Sans",
    fontStyle: FontStyle.italic,
  );
  static TextStyle tinyStyle = const TextStyle(
    fontSize: 18,
    fontFamily: "Josefin Sans",
  );
    static TextStyle tinyStyleUnderline = const TextStyle(
    decoration: TextDecoration.underline,
    fontSize: 18,
    fontFamily: "Josefin Sans",
  );
  static TextStyle tinyStyleGreen = TextStyle(
    fontSize: 18,
    fontFamily: "Josefin Sans",
    color: AppColor.mainColor,
  );
  static TextStyle tinyStyleGreenBold = TextStyle(
    fontSize: 18,
    fontFamily: "Josefin Sans",
    color: AppColor.mainColor,
    fontWeight: FontWeight.bold,
  );
  static TextStyle tinyStyleItalic = const TextStyle(
    fontSize: 18,
    fontFamily: "Josefin Sans",
    fontStyle: FontStyle.italic,
  );
  static TextStyle tinyStyleGray = TextStyle(
    fontSize: 18,
    fontFamily: "Josefin Sans",
    color: AppColor.hintTextColor,
  );
  static TextStyle tinyStyleBold = const TextStyle(
    fontSize: 18,
    fontFamily: "Josefin Sans",
    fontWeight: FontWeight.bold,
  );
  static TextStyle moreTinyStyle = const TextStyle(
    fontSize: 14,
    fontFamily: "Josefin Sans",
  );
  static TextStyle moreTinyStyleGreen = TextStyle(
    fontSize: 14,
    fontFamily: "Josefin Sans",
    color: AppColor.mainColor,
  );
  static TextStyle moreTinyStyleGray = TextStyle(
    fontSize: 14,
    fontFamily: "Josefin Sans",
    color: AppColor.hintTextColor,
  );
  static TextStyle hintTextStyle = TextStyle(
    color: AppColor.hintTextColor,
    fontFamily: "Josefin Sans",
  );
}
