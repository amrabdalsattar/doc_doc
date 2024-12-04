import 'package:doc_doc/core/helpers/setup_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'doc_app.dart';

void main() async {
  SetupManager.setupSystemUI();
  await ScreenUtil.ensureScreenSize();
  runApp(const DocDocApp());
}
