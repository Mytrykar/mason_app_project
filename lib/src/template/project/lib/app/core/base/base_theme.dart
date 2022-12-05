import 'package:mason_app_project/src/template/project_template.dart';

extension BaseTheme on FlutterProjectTemplate {
  String get templateBaseTheme {
    return """
import 'package:flutter/material.dart';

// TODO In this class you can set the initial settings of the theme.
// This is a base app theme, extend it to create app themes
abstract class BaseTheme {
  final String nameTheme;
  final Brightness brightness;

  final ColorScheme colorScheme;

  const BaseTheme(this.nameTheme, this.brightness, {required this.colorScheme});

  ThemeData get theme {
    return ThemeData(colorScheme: colorScheme, brightness: brightness);
  }
}
""";
  }
}
