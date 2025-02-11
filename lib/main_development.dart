import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';
import 'core/helpers/setup_manager.dart';
import 'doc_app.dart';

void main() async {
  SetupManager.setupSystemUI();
  await ScreenUtil.ensureScreenSize();

  setUpGetIt();

  runApp(const DocDocApp());
}
