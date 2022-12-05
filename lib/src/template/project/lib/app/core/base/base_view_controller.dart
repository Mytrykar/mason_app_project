import 'package:mason_app_project/src/template/project_template.dart';

extension BaseController on FlutterProjectTemplate {
  String get templateBaseController {
    return """
import 'package:get/get.dart';
import 'package:logger/logger.dart';

abstract class BaseController extends GetxController {
  Logger? log;
}
""";
  }
}
