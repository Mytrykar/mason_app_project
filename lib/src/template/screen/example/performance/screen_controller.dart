import 'package:change_case/change_case.dart';
import 'package:mason_app_project/src/template/screen_template.dart';

extension $ExampleController on ScreenTemplate {
  String get exampleControllerContent => """
import 'package:flutter/widgets.dart';
import 'package:$projectName/app/core/base/base_view_controller.dart';

class ${screenName.toPascalCase()}Controller extends BaseController {}
""";

  String get exampleControllerDartPath =>
      "/lib/ui/screens/${screenName.toSnakeCase()}/performance/screen_controller.dart";
}
