import 'package:mason_app_project/src/template/project_template.dart';

extension GetInCli on FlutterProjectTemplate {
  String get templateGetInCli {
    return """
//Nested routes are generated here. Please do not modify or delete the structure.//
// you should use: project_cli add screen <Screen Name>
//----------------!G E N E R A T E   S C R E E N   R O U T E!----------------//

part of '../router.dart';

@TypedGoRoute<HomeRoute>(
  path: '/',
)

""";
  }
}
