import 'package:fashion_ecom_app/constants/colors.dart';
import 'package:fashion_ecom_app/constants/size_config.dart';
import 'package:flutter/material.dart';

class AppThene {
  static ThemeData lightMode = ThemeData(
    primaryColor: primayColor,
    secondaryHeaderColor: secondaryColor,
    primaryColorLight: appWhite,
    primaryColorDark: appBlack,
    fontFamily: 'tenorSan',
    appBarTheme: AppBarTheme(
      backgroundColor: appWhite,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: appBlack,
        fontSize: scaleFontSize(25),
        fontFamily: 'tenorSan',
      ),
    ),
  );
}
