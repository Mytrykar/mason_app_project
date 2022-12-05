import 'package:mason_app_project/src/template/project_template.dart';

extension BaseScreen on FlutterProjectTemplate {
  String get templateBaseScreen {
    return """
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:$projectName/app/core/base/base_view_controller.dart';

abstract class BaseScreen<T extends BaseController>
    extends GetResponsiveView<T> {
  BaseScreen({
    Key? key,
  }) : super(
            key: key,
            alwaysUseBuilder: true,
            settings: const ResponsiveScreenSettings());
}
""";
  }
}
