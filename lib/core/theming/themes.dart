import 'package:doc_doc/core/theming/colors_manager.dart';
import 'package:flutter/material.dart';

class ThemesManager {
  static ThemeData lightTheme = ThemeData(
    primaryColor: ColorsManager.primaryColor,
    scaffoldBackgroundColor: ColorsManager.white,
    fontFamily: "Inter",
  );
}
