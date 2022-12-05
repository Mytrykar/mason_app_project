import 'package:mason_app_project/src/template/project_template.dart';

extension $ExampleController on FlutterProjectTemplate {
  String get exampleControllerContent => """
import 'package:flutter/widgets.dart';
import 'package:$projectName/app/core/base/base_view_controller.dart';

class HomeController extends BaseController {}
""";
}
