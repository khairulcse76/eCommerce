import 'dart:ui';
import 'package:flutter/material.dart';

class MyColors{

  MyColors._();

  //App Basic Colors
  static const Color primary =  Color(0xff3555f6);
  static const Color secondary =  Color(0xfffadb36);
  static const Color accent =  Color(0xffb0c7ff);

  //Text Colors
  static const Color textPrimary =  Color(0xff423f3f);
  static const Color textSecondary =  Color(0xff6c757d);
  static const Color textWhite =  Color(0xffffffff);

  // background Colors
  static const Color bgLight =  Color(0xfff6f6f6);
  static const Color bgDark =  Color(0xff272727);
  static const Color bgPrimary =  Color(0xfff3f5ff);

  // background container Colors
  static const Color bgLightContainer =  Color(0xfff6f6f6);
  static  Color bgDarkContainer =  MyColors.textWhite.withOpacity(0.1);
  static const Color bgPrimaryContainer =  Color(0xfff3f5ff);



  // Button Colors
  static const Color btnPrimary =  Color(0xff3555f6);
  static const Color btnSecondary =  Color(0xff6c757d);
  static const Color btnDisabled =  Color(0xff84898d);



  // Border Colors
  static const Color borderPrimary =  Color(0xffd9d9d9);
  static const Color borderSecondary =  Color(0xffe6e6e6);
  static const Color borderDisabled =  Color(0xff84898d);

  // Errors and Validation Colors
  static const Color error =  Color(0xffde2828);
  static const Color success =  Color(0xff388e3c);
  static const Color worning =  Color(0xfff57c00);
  static const Color info =  Color(0xff1976d2);


  // Neutral Shades Colors
  static const Color black =  Color(0xff232323);
  static const Color darkerGrey =  Color(0xff4f4f4f);
  static const Color darkGrey =  Color(0xff939393);
  static const Color grey =  Color(0xffe0e0e0);
  static const Color softGrey =  Color(0xfff4f4f4);
  static const Color lightGrey =  Color(0xfff9f9f9);
  static const Color white =  Color(0xffffffff);

  static const Gradient linerGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
      end: Alignment(0.707, -0.707),
      colors: [
    Color(0xffff9a9c),
    Color(0xfffad0c4),
    Color(0xfffad0c4),
  ]);



}


















