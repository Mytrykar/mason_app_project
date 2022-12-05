import 'package:mason_app_project/src/template/project_template.dart';

extension BaseService on FlutterProjectTemplate {
  String get templateBaseService {
    return """
import 'package:logger/logger.dart';
import 'package:$projectName/app/utils/logger.dart';

class BaseService {
  late Logger log;

  BaseService(String? title) {
    log = getLogger(
      title ?? runtimeType.toString(),
    );
  }
}
""";
  }
}
