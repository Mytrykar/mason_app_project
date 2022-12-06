import 'package:change_case/change_case.dart';
import 'package:mason_app_project/src/template/project_template.dart';
import 'package:mason_app_project/mason_app_project.dart' as e;

extension AppRouter on FlutterProjectTemplate {
  String get templateAppRouter {
    return """
library app_router;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:${projectName.toSnakeCase()}/app/utils/logger.dart';
import 'package:${projectName.toSnakeCase()}/ui/screens/home/performance/home_view.dart';
import 'package:${projectName.toSnakeCase()}/ui/widgets/dumb/error_widget.dart' as e;

part 'observer.dart';
part 'router.g.dart';
part 'gen.dart';


class AppRouter {
  /// use this in [MaterialApp.router]
  static GoRouter get router => _router;

  static final GoRouter _router = GoRouter(
    routes: ${e.Dollar.dollar}appRoutes,
    observers: _observers,
    errorBuilder: (context, state) => const Scaffold(body: e.ErrorWidget()),
  );

  static List<NavigatorObserver>? get _observers {
    if (kDebugMode) return [_DebugObserver()];
    return null;
  }
}
""";
  }
}
