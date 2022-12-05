import 'package:date_format/date_format.dart';
import 'package:mason_app_project/src/template/project_template.dart';

extension HomeRoute on FlutterProjectTemplate {
  String get templateHomeRoute {
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

class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context) => HomeScreen();
}
""";
  }
}
