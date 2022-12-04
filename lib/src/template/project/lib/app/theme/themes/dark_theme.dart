import 'package:mason_app_project/src/template/project_template.dart';

extension DarkTheme on FlutterProjectTemplate {
  String get templateDarkTheme => """
part of '../app_theme.dart';

class DarkTheme extends BaseTheme {
  DarkTheme()
      : super("base_dark", Brightness.dark,
            colorScheme: const ColorScheme.dark());
}
""";
}
