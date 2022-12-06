import 'package:change_case/change_case.dart';
import 'package:mason_app_project/src/template/project_template.dart';

extension Locator on FlutterProjectTemplate {
  String get templateLocator => """
  import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:${projectName.toSnakeCase()}/app/services/theme_servise.dart';

import 'logger.dart';

GetIt locator = GetIt.instance;

class LocatorInjector {
  static Logger log = getLogger('LocatorInjector');

  static Future<void> setupLocator() async {
    log.d('Initializing Theme Service');
    locator.registerLazySingleton(() => ThemeServise("ThemeServise")..init());
  }
}

""";
}
