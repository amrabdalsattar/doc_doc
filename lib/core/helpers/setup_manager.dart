import 'package:doc_doc/core/theming/colors_manager.dart';
import 'package:flutter/services.dart';

class SetupManager {
  static void setupSystemUI() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: ColorsManager.white,
      statusBarIconBrightness: Brightness.dark,
    ));
  }
}
