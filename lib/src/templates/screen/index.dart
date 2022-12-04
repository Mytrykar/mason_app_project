import 'package:change_case/change_case.dart';

extension $Index on ScreenTemplate {
  String get indexDartContent => """
library ${screenName..toSnakeCase()};

export 'performance/${screenName.toSnakeCase()}.dart';
""";

  String get indexDartPath =>
      "/lib/ui/screens/${screenName.toSnakeCase()}/index.dart";
}
