import 'core/helpers/token_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';
import 'core/helpers/setup_manager.dart';
import 'core/helpers/shared_preferences/shared_preferences_helper.dart';
import 'doc_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SharedPreferencesHelper.init();

  await TokenHelper.checkIfUserIsLoggedIn();

  setUpGetIt();

  SetupManager.setupSystemUI();
  await ScreenUtil.ensureScreenSize();

  runApp(const DocDocApp());
}
