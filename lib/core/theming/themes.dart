import 'package:flutter/material.dart';

import 'colors_manager.dart';

class ThemesManager {
  static ThemeData lightTheme = ThemeData(
    primaryColor: ColorsManager.primaryColor,
    scaffoldBackgroundColor: ColorsManager.white,
    fontFamily: "Inter",
  );
}
