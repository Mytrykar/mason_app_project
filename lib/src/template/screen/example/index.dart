import 'package:change_case/change_case.dart';
import 'package:mason_app_project/src/template/screen_template.dart';

extension $Index on ScreenTemplate {
  String get indexDartContent => """
library ${screenName..toSnakeCase()};

export 'performance/${screenName.toSnakeCase()}.dart';
""";

  String get indexDartPath =>
      "/lib/ui/screens/${screenName.toSnakeCase()}/index.dart";
}
