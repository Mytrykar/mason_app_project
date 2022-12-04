// ignore_for_file: constant_identifier_names
library lib;

import 'package:mason_app_project/mason_app_project.dart';

enum ProjectComponent {
  main,
  base_bloc_widget,
  base_screen,
  base_servise,
  base_theme,
  base_view_controller,
  base_widget,
  helpers,
  models,
  routes,
  nav_observer,
  router,
  theme_servise,
  dark_theme,
  light_theme,
  app_theme,
  constants,
  locator,
  logger,
  utils,
  app,
  error_widget,
  smart,
  readme,
  jsons,
  fonts,
  images,
  screens
}

class FlutterProjectTemplate extends InputParam {
  FlutterProjectTemplate({required super.projectName});

  Map<String, String> template(String path) => {};

  static const Map<ProjectComponent, String> tree = {
    ProjectComponent.screens: "/lib/ui/screens",
    ProjectComponent.images: "/assets/images",
    ProjectComponent.fonts: "/assets/fonts",
    ProjectComponent.jsons: "/jsons",
    ProjectComponent.smart: "/lib/ui/widgets/smart",
    ProjectComponent.app: "/lib/app/app.dart",
    ProjectComponent.utils: "/lib/app/utils/utils.dart",
    ProjectComponent.logger: "/lib/app/utils/logger.dart",
    ProjectComponent.locator: "/lib/app/utils/locator.dart",
    ProjectComponent.constants: "/lib/app/utils/constants.dart",
    ProjectComponent.app_theme: "/lib/app/theme/app_theme.dart",
    ProjectComponent.light_theme: "/lib/app/theme/themes/light_theme.dart",
    ProjectComponent.dark_theme: "/lib/app/theme/themes/dark_theme.dart",
    ProjectComponent.theme_servise: "/lib/app/services/theme_servise.dart",
    ProjectComponent.error_widget: "/lib/ui/widgets/dumb/error_widget.dart",
    ProjectComponent.nav_observer: "/lib/app/router/observer.dart",
    ProjectComponent.router: "/lib/app/router/router.dart",
    ProjectComponent.routes: "/lib/app/router/routes",
    ProjectComponent.models: "/lib/app/models",
    ProjectComponent.helpers: "/lib/app/helpers",
    ProjectComponent.base_view_controller:
        "/lib/app/core/base/base_view_controller.dart",
    ProjectComponent.base_theme: "/lib/app/core/base/base_theme.dart",
    ProjectComponent.base_servise: "/lib/app/core/base/base_servise.dart",
    ProjectComponent.base_widget: "/lib/app/core/base/base_widget.dart",
    ProjectComponent.base_screen: "/lib/app/core/base/base_screen.dart",
    ProjectComponent.base_bloc_widget:
        "/lib/app/core/base/base_bloc_widget.dart",
    ProjectComponent.main: "/lib/main.dart",
    ProjectComponent.readme: "/readme.md",
  };
}
