library gen_new_screen;

import 'dart:convert';
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
    // /home/{tag:String}{gg:DateTime}
    String route, {
    required this.path,
    required this.routeName,
    required this.projectName,
    required this.screenName,
  }) {
    _disassembleRoute(route);
  }

  String get route => _route;
  List<String> queryParam(bool paramThis) {
    if (_queryParams == null) return [];

    var result = <String>[];
    final divider = "|";
    for (var element in _queryParams!) {
      int on, of;
      if (paramThis) {
        on = element.indexOf(divider) + 1;
        of = element.length;
      } else {
        on = 0;
        of = element.indexOf(divider);
      }
      result.add(element.substring(on, of));
    }
    return result;
  }

  bool get _existScreen => File(path + indexDartPath).existsSync();

  Map<FileSystemEntity, String> get template {
    var result = <FileSystemEntity, String>{};
    if (!_existScreen) {
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

  // Serialize a [num], [String], [bool], [Null] value.
  void _disassembleRoute(String route) {
    if (!_hasParams(route)) return;
    var cleanRoute = route.substring(0, route.lastIndexOf("/") + 1);
    String param, type;
    bool moveNext = true;
    final params = route
        .substring(route.lastIndexOf("/{") + 2, route.lastIndexOf("}"))
        .split("}{");
    for (var element in params) {
      final type = element.substring(element.indexOf(":") + 1);
      final name = element.substring(0, element.indexOf(":"));
      if (_queryParams == null) _queryParams = [];
      _queryParams!.add("final $type $name;|this.$name");
      cleanRoute += "{$name:}";
    }

    _route = cleanRoute;
  }

  bool _hasParams(String route) {
    print(route.contains(RegExp(r"[{,}]")));
    return route.contains(RegExp(r"[{,}]"));
  }
}

void main(List<String> args) {
  final temp = ScreenTemplate(
      "/route/{num:num}{string:String}{bool:bool}{null:Null}",
      path: Directory.current.path,
      routeName: "Example",
      projectName: "project",
      screenName: "Foo");
  print(temp.route);
  print(temp._queryParams);
  print(temp.queryParam(false).join("""

"""));
  print(temp.queryParam(true).join(","));
}
