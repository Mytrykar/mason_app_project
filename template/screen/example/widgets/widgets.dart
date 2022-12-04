import 'package:change_case/change_case.dart';
import 'package:mason_app_project/src/template/screen/gen_screen.dart';

extension $Widgets on ScreenTemplate {
  String get widgetsDartPath =>
      "/lib/ui/screens/${screenName.toSnakeCase()}/widgets";
}
