import 'package:change_case/change_case.dart';
import 'package:mason_app_project/src/template/project_template.dart';

extension AppTheme on FlutterProjectTemplate {
  String get templateAppTheme => """
library app_theme;

import 'package:flutter/material.dart';
import 'package:${projectName.toSnakeCase()}/app/core/base/base_theme.dart';
part 'themes/dark_theme.dart';
part 'themes/light_theme.dart';

class AppTheme {
  static final BaseTheme defaultLightTheme = LightTheme();
  static final BaseTheme defaultDarkTheme = DarkTheme();

  static final List<BaseTheme> themes = [
    // base_light
    LightTheme(),
    // base_dark
    DarkTheme(),
  ];
}
}
""";
}
