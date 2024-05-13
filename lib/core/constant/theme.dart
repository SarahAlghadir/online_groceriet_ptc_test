import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'color.dart';

class CustomTheme {
  static const lightThemeFont = "Poppins", darkThemeFont = "Poppins";

  // light theme
  static final lightTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.backgroundColor3,
    useMaterial3: false,
    primaryColorLight: AppColors.backgroundColorDark,
    cardTheme: CardTheme(
      color: AppColors.backgroundColorDark.withOpacity(.8),
    ),
    fontFamily: lightThemeFont,
    // iconTheme: IconThemeData(color: white),
    dividerTheme: const DividerThemeData(color: AppColors.backgroundColor3),
    textTheme: TextTheme(labelLarge: TextStyle(color: white)),
    switchTheme: SwitchThemeData(
      thumbColor:
          MaterialStateProperty.resolveWith<Color>((states) => lightThemeColor),
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: AppColors.backgroundColor3,
      scrolledUnderElevation: 0,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w500,
        color: black,
        fontSize: 23, //20
      ),
      iconTheme: IconThemeData(color: black),
      elevation: 0,
      actionsIconTheme: IconThemeData(color: lightThemeColor),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: white,
        statusBarIconBrightness: Brightness.dark,
      ),
    ),
  );

  // dark theme
  static final darkTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.backgroundColorDark,
    primaryColorDark: AppColors.backgroundColor3,
    dividerTheme: const DividerThemeData(color: AppColors.backgroundColorDark),
    cardTheme: CardTheme(
      color: Colors.white,
    ),
    cardColor: Colors.white,
    useMaterial3: false,
    fontFamily: darkThemeFont,
    iconTheme: IconThemeData(color: black),
    textTheme: TextTheme(labelLarge: TextStyle(color: black)),
    switchTheme: SwitchThemeData(
      trackColor:
          MaterialStateProperty.resolveWith<Color>((states) => darkThemeColor),
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: AppColors.backgroundColorDark,
      foregroundColor: white,
      iconTheme: IconThemeData(color: white),
      elevation: 0,
      actionsIconTheme: IconThemeData(color: white),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: black,
        statusBarIconBrightness: Brightness.light,
      ),
    ),
  );

  // colors
  static Color lightThemeColor = AppColors.primaryColor,
      white = Colors.white,
      black = Colors.black,
      darkThemeColor = AppColors.primaryColor;
}
