import 'package:doc_doc/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';
import 'core/helpers/constants.dart';
import 'core/helpers/setup_manager.dart';
import 'core/helpers/shared_preferences_helper.dart';
import 'doc_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SetupManager.setupSystemUI();
  await ScreenUtil.ensureScreenSize();

  setUpGetIt();
  await checkIfUserIsLoggedIn();
  runApp(const DocDocApp());
}

checkIfUserIsLoggedIn() async {
  String? userToken = await SharedPreferencesHelper.getString(
    SharedPreferencesKeys.userToken,
  );
  debugPrint(await SharedPreferencesHelper.getString(
    SharedPreferencesKeys.userToken,
  ));
  if (!userToken.isNullOrEmpty()) {
    isLoggedIn = true;
  } else {
    isLoggedIn = false;
  }
  debugPrint('is logged in : $isLoggedIn');
}
