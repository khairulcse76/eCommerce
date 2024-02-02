import 'package:ecommerce/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class MyAppBarTheme{
  MyAppBarTheme._();


  static const lightAppbarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor:Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black, size: 24),
    actionsIconTheme: IconThemeData(color: Colors.black, size: 24),
    titleTextStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black)

  );
  static const darkAppbarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor:Colors.transparent,
    iconTheme: IconThemeData(color: Colors.white, size: 24),
    actionsIconTheme: IconThemeData(color: Colors.white, size: 24),
    titleTextStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white)

  );

  static ThemeData lightAppbarTheme1 = ThemeData.light().copyWith(
    backgroundColor: Colors.transparent,

    primaryColor: Colors.blue, // Set your light theme primary color
    hintColor: Colors.green, // Set your light theme accent color
    scaffoldBackgroundColor: Colors.white, // Set your light theme background color
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.blue, // Set your light theme app bar color
      titleTextStyle: MyTextTheme.lightTextTheme.button,
    ),
  );

  static ThemeData darkAppbarTheme1 = ThemeData.dark().copyWith(
    primaryColor: Colors.indigo, // Set your dark theme primary color
    hintColor: Colors.teal, // Set your dark theme accent color
    scaffoldBackgroundColor: Colors.grey[900], // Set your dark theme background color
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.indigo, // Set your dark theme app bar color
      titleTextStyle: MyTextTheme.lightTextTheme.button,
    ),
  );


}