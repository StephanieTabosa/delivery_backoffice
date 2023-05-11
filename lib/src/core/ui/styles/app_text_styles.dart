import 'package:flutter/material.dart';

class AppTextStyles {
  static AppTextStyles? _instance;

  AppTextStyles._();

  static AppTextStyles get instance {
    _instance ??= AppTextStyles._();
    return _instance!;
  }

  String get fontFamily => 'mplus1';

  TextStyle get textLight => TextStyle(fontWeight: FontWeight.w300, fontFamily: fontFamily);
  TextStyle get textRegular => TextStyle(fontWeight: FontWeight.normal, fontFamily: fontFamily);
  TextStyle get textMedium => TextStyle(fontWeight: FontWeight.w500, fontFamily: fontFamily);
  TextStyle get textBold => TextStyle(fontWeight: FontWeight.bold, fontFamily: fontFamily);
  TextStyle get textExtraBold => TextStyle(fontWeight: FontWeight.w800, fontFamily: fontFamily);

  TextStyle get textButtonLabel => textBold.copyWith(fontSize: 14);
  TextStyle get textTitle => textExtraBold.copyWith(fontSize: 22);
}

extension TextStylesExtension on BuildContext {
  AppTextStyles get appTextStyles => AppTextStyles.instance;
}
