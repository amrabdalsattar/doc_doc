import 'package:flutter/material.dart';

import 'colors_manager.dart';

class ThemesManager {
  static ThemeData lightTheme = ThemeData(
      primaryColor: ColorsManager.primaryColor,
      scaffoldBackgroundColor: ColorsManager.white,
      fontFamily: "Inter",
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: ColorsManager.primaryColor,
        selectionColor: ColorsManager.primaryColor.withOpacity(0.3),
        selectionHandleColor: ColorsManager.primaryColor,
      ));
}
