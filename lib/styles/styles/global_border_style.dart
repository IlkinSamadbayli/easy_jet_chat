import 'package:flutter/material.dart';

import '../colors/app_colors.dart';

class GlobalBorderStyle {
  static BorderRadius get borderRadius4 => BorderRadius.circular(4);
  static BorderRadius get borderRadius8 => BorderRadius.circular(8);
  static BorderRadius get borderRadius10 => BorderRadius.circular(10);
  static BorderRadius get borderRadius12 => BorderRadius.circular(12);
  static BorderRadius get borderRadius16 => BorderRadius.circular(16);
  static BorderRadius get borderRadius18 => BorderRadius.circular(18);
  static BorderRadius get borderRadius40 => BorderRadius.circular(40);

  static InputBorder get borderStyle => OutlineInputBorder(
        borderRadius: borderRadius4,
        borderSide: BorderSide(
          color: AppColor.focusColor,
        ),
      );

  static InputBorder focusBorderStyle({required bool isCorrect}) =>
      OutlineInputBorder(
        borderRadius: borderRadius4,
        borderSide: BorderSide(
          color: isCorrect ? AppColor.mainColor : AppColor.errorColor,
        ),
      );
  static InputBorder get errorBorderStyle => OutlineInputBorder(
        borderRadius: borderRadius4,
        borderSide: BorderSide(
          color: AppColor.errorColor,
        ),
      );
  static InputBorder get enabledBorderStyle => OutlineInputBorder(
        borderRadius: borderRadius4,
        borderSide: BorderSide(
          color: AppColor.primaryColor,
        ),
      );
  static kInputDecoration(String labelText, bool isCorrect) => InputDecoration(
      labelText: labelText,
      enabledBorder: enabledBorderStyle,
      focusedBorder: focusBorderStyle(isCorrect: isCorrect),
      errorBorder: errorBorderStyle,
      border: borderStyle);
}
