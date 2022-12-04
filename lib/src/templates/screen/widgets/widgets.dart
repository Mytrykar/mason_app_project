import 'package:change_case/change_case.dart';

extension $Widgets on ScreenTemplate {
  String get widgetsDartPath =>
      "/lib/ui/screens/${screenName.toSnakeCase()}/widgets";
}
