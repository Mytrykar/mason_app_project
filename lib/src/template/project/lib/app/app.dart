import 'package:change_case/change_case.dart';
import 'package:mason_app_project/src/template/project_template.dart';

extension App on FlutterProjectTemplate {
  String get appTemplate => """import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:$projectName/app/services/theme_servise.dart';

import 'router/router.dart';
import 'utils/locator.dart';

class ${projectName.toPascalCase()}App extends StatelessWidget {
  const ${projectName.toPascalCase()}App({super.key});
  GoRouter get _router => AppRouter.router;
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      title: "${projectName.toCapitalCase()}",
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      routeInformationProvider: _router.routeInformationProvider,
      theme: locator.get<ThemeServise>().lightTheme,
      darkTheme: locator.get<ThemeServise>().darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
    );
  }
}
""";
}
