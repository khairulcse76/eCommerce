import 'package:ecommerce/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class MyChipTheme{

  MyChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
  disabledColor: Colors.grey.withOpacity(0.4),
  labelStyle: MyTextTheme.lightTextTheme.labelMedium,
  selectedColor: Colors.blueAccent,
  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: Colors.white,
  );

  static ChipThemeData darkChipTheme = ChipThemeData(
  disabledColor: Colors.grey.withOpacity(0.4),
  labelStyle: MyTextTheme.darkTextTheme.labelMedium,
  selectedColor: Colors.blueAccent,
  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: Colors.white,
  );


}