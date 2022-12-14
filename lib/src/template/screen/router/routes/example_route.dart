import 'package:change_case/change_case.dart';
import 'package:date_format/date_format.dart';
import 'package:mason_app_project/src/template/screen_template.dart';

extension GenRoute on ScreenTemplate {
  String get templateDenRoute {
    final n = DateTime.now();
    String date =
        formatDate(DateTime(n.year, n.month, n.day), [yyyy, '-', mm, '-', dd]);
    String time = formatDate(
        DateTime(n.year, n.month, n.day, n.hour, n.minute, n.second),
        [HH, ':', nn, ':', ss]);

    return """
// This file is created using project_cli. Cli only creates this file.
// You can edit this file without restrictions.
// Then execute
// --
// dart pub global run build_runner build -d
// --
// to generate the Go_router file.
// Gen Date $date Time $time

part of '../router.dart';

class ${routeName.toPascalCase()}Route extends GoRouteData {
  const ${routeName.toPascalCase()}Route(${queryParam(true).join(",")});
${queryParam(false).join("""

""")}

  @override
  Widget build(BuildContext context) => HomeScreen();
}
""";
  }

  String get genPathDenRoute =>
      "/lib/app/router/routes/${routeName.toSnakeCase()}_routes.dart";
}
