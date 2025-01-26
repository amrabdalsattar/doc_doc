import 'package:flutter/services.dart';

import '../theming/colors_manager.dart';

class SetupManager {
  static void setupSystemUI() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: ColorsManager.white,
      statusBarIconBrightness: Brightness.dark,
    ));
  }
}
