import 'package:change_case/change_case.dart';
import 'package:mason_app_project/src/template/project_template.dart';

extension BaseBlocWidget on FlutterProjectTemplate {
  String get templateBaseBlocWidget {
    return """
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:${projectName.toSnakeCase()}/app/core/base/base_view_controller.dart';

abstract class BaseBlocWidget<T extends BaseController> extends StatefulWidget {
  const BaseBlocWidget({super.key});

  final String? tag = null;

  T get controller => GetInstance().find<T>(tag: tag);
}
""";
  }
}
