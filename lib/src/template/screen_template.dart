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

class ScreenTemplate {
  // project_app
  final String projectName;

  //Home page
  final String? screenName;

  //ToHome
  final String routeName;

  // /home
  final String route;
  // :tag as String
  final Map<String, dynamic>? qeryParams;

  final String path;

  const ScreenTemplate({
    required this.path,
    required this.route,
    this.qeryParams,
    required this.routeName,
    required this.projectName,
    this.screenName,
  });

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
        MapEntry(File(path + genPath), ""),
      ],
    );
    return result;
  }
}
