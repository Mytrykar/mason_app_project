import 'package:change_case/change_case.dart';
import 'package:mason_app_project/src/template/widget_template.dart';

extension Widget on GetWidgetTemplate {
  String get templateWidget {
    return """
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:${projectName.toSnakeCase()}/ui/screens/${parent.toSnakeCase()}/performance/screen_controller.dart';

class ${widgetName.toPascalCase()}GetWidget extends GetView<${parent.toPascalCase()}ScreenController> {
  const ${widgetName.toPascalCase()}GetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO When you create a widget, delete the todo term.
    return Obx(() {
      return Container();
    });
  }
}
""";
  }

  String get pathWidget =>
      "/lib/ui/screens/${parent.toSnakeCase()}/widgets/${widgetName.toSnakeCase()}_get_widget.dart";
}
