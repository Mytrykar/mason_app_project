import 'package:mason_app_project/src/template/project_template.dart';

extension Index on FlutterProjectTemplate {
  String get templateIndex => """
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:$projectName/app/core/base/base_screen.dart';
import 'package:$projectName/ui/screens/example/performance/screen_controller.dart';

part '_desktop.dart';
part '_mobile.dart';
part '_tablet.dart';
part '_watch.dart';

class HomeScreen extends BaseScreen<HomeController> {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX(
        init: HomeController(),
        autoRemove: true,
        builder: (i) => screen.responsiveValue(
              desktop: _Desktop(),
              mobile: _Mobile(),
              tablet: _Tablet(),
              watch: _Watch(),
            )!);
  }
}
""";
}
