library gen_new_screen;

import 'dart:io';
import 'package:mason_app_project/src/template/screen/example/index.dart';
import 'package:mason_app_project/src/template/screen/example/performance/_desktop.dart';
import 'package:mason_app_project/src/template/screen/example/performance/_mobile.dart';
import 'package:mason_app_project/src/template/screen/example/performance/_tablet.dart';
import 'package:mason_app_project/src/template/screen/example/performance/_watch.dart';
import 'package:mason_app_project/src/template/screen/example/performance/screen.dart';
import 'package:mason_app_project/src/template/screen/example/performance/screen_controller.dart';
import 'package:mason_app_project/src/template/screen/example/widgets/widgets.dart';
import 'package:mason_app_project/src/template/screen/router/gen_project_cli.dart';
import 'package:mason_app_project/src/template/screen/router/routes/example_route.dart';

class ScreenTemplate {
  // project_app
  final String projectName;

  //Home page
  final String screenName;

  //ToHome
  final String routeName;

  // /home/{:tag}
  late String _route;
  // String tag | this.tag
  List<String>? _queryParams;

  final String path;

  ScreenTemplate(
    String route, {
    required this.path,
    required this.routeName,
    required this.projectName,
    required this.screenName,
  });

  String get route => _route;

  bool get existScreen => File(path + indexDartPath).existsSync();

  Map<FileSystemEntity, String> get template {
    var result = <FileSystemEntity, String>{};
    if (!existScreen) {
      result = {
        File(path + desktopViewDartPath): desktopViewContent,
        File(path + mobileViewDartPath): mobileViewContent,
        File(path + tabletViewDartPath): tabletViewContent,
        File(path + watchViewDartPath): watchViewContent,
        File(path + exampleControllerDartPath): exampleControllerContent,
        File(path + examplescreenDartPath): examplescreenContent,
        Directory(path + widgetsDartPath): "",
        File(path + indexDartPath): indexDartContent,
      };
    }
    result.addEntries(
      [
        MapEntry(File(path + genPath), templateAppRouter),
        MapEntry(File(path + genPathDenRoute), templateDenRoute),
      ],
    );
    return result;
  }
}
