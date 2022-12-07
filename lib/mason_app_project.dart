library mason_app_project;

import 'dart:io';

import 'src/template/project_template.dart';
import 'src/template/screen_template.dart';
import 'src/template/widget_template.dart';

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

  static Map<FileSystemEntity, String> templateScreen(
          String projectName, path, screenName, route, routeName) =>
      ScreenTemplate(route,
              path: path,
              projectName: projectName,
              routeName: routeName,
              screenName: screenName)
          .template;

  static MapEntry<FileSystemEntity, String> templateGetWidget(
          {required String projectName,
          required String widgetName,
          required String parent,
          required String path}) =>
      GetWidgetTemplate(projectName, widgetName, parent, path).template;
}
