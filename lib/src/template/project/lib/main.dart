import 'package:change_case/change_case.dart';
import 'package:mason_app_project/src/template/project_template.dart';

extension Main on FlutterProjectTemplate {
  String get mainTemplate => """import 'package:flutter/material.dart';

import 'package:${projectName.toSnakeCase()}/app/app.dart';

import 'app/utils/locator.dart';

/// Entrance in your application, perform all previous initializations here.
main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Initial App Servises
  await LocatorInjector.setupLocator();

  /// Runs the app :)
  runApp(const ProjectApp());
}
""";
}
