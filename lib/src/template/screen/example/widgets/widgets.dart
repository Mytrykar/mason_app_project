import 'package:change_case/change_case.dart';

import '../../gen_screen.dart';

extension $Widgets on ScreenTemplate {
  String get widgetsDartPath =>
      "/lib/ui/screens/${screenName.toSnakeCase()}/widgets";
}
