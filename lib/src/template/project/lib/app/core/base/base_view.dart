import 'package:mason_app_project/src/template/project_template.dart';

extension BaseView on FlutterProjectTemplate {
  String get templateBaseView {
    return """
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'base_view_controller.dart';

// ignore: must_be_immutable
abstract class BaseView<T extends BaseController> extends GetView<T> {
  const BaseWidget({
    super.key,
  });
  late Map<Key,Size> sizes;
}
""";
  }
}
