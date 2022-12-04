import 'package:mason_app_project/src/template/project_template.dart';

extension LightTheme on FlutterProjectTemplate {
  String get templateLightTheme => """
part of '../app_theme.dart';

class LightTheme extends BaseTheme {
  LightTheme()
      : super("base_light", Brightness.light,
            colorScheme: const ColorScheme.light());
}

""";
}
