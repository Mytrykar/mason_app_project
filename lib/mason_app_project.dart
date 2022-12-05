library mason_app_project;

import 'dart:io';

import 'src/template/project_template.dart';

abstract class InputParam {
  // Sing in
  final String? screenName;
  // project_app
  final String projectName;
  // /home/params:
  final String? pathRoute;

  InputParam({this.pathRoute, required this.projectName, this.screenName});
}

extension Dollar on String {
  static const dollar = r"$";
}

class MasonFlutterProject {
  static Map<FileSystemEntity, String> templateApp(String projectName, path) =>
      FlutterProjectTemplate(projectName: projectName).template(path);
}
