import 'package:change_case/change_case.dart';
import 'package:mason_app_project/src/template/screen_template.dart';

extension AppRouter on ScreenTemplate {
  String get templateAppRouter {
    return """
@TypedGoRoute<${routeName.toPascalCase()}Route>(
  path: '$route',
)
""";
  }

  String get genPath => "/lib/app/router/gen_project_cli.dart";
}
