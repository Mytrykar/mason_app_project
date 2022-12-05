// ignore_for_file: constant_identifier_names
library project;

import 'dart:io';

import 'package:mason_app_project/mason_app_project.dart';
import 'package:mason_app_project/src/template/project/readme.dart';
import 'package:mason_app_project/src/template/project/lib/main.dart';
import 'package:mason_app_project/src/template/project/lib/app/app.dart';
import 'package:mason_app_project/src/template/project/lib/app/core/base/base_bloc_widget.dart';
import 'package:mason_app_project/src/template/project/lib/app/core/base/base_screen.dart';
import 'package:mason_app_project/src/template/project/lib/app/core/base/base_servise.dart';
import 'package:mason_app_project/src/template/project/lib/app/core/base/base_theme.dart';
import 'package:mason_app_project/src/template/project/lib/app/core/base/base_view_controller.dart';
import 'package:mason_app_project/src/template/project/lib/app/core/base/base_widget.dart';
import 'package:mason_app_project/src/template/project/lib/app/router/observer.dart';
import 'package:mason_app_project/src/template/project/lib/app/router/router.dart';
import 'package:mason_app_project/src/template/project/lib/app/router/gen_project_cli.dart';
import 'package:mason_app_project/src/template/project/lib/app/router/routes/home_route.dart';
import 'package:mason_app_project/src/template/project/lib/app/services/theme_servise.dart';
import 'package:mason_app_project/src/template/project/lib/app/theme/app_theme.dart';
import 'package:mason_app_project/src/template/project/lib/app/theme/themes/dark_theme.dart';
import 'package:mason_app_project/src/template/project/lib/app/theme/themes/light_theme.dart';
import 'package:mason_app_project/src/template/project/lib/app/utils/constants.dart';
import 'package:mason_app_project/src/template/project/lib/app/utils/locator.dart';
import 'package:mason_app_project/src/template/project/lib/app/utils/logger.dart';
import 'package:mason_app_project/src/template/project/lib/app/utils/utils.dart';
import 'package:mason_app_project/src/template/project/lib/ui/screens/home/index.dart';
import 'package:mason_app_project/src/template/project/lib/ui/screens/home/performance/_desktop.dart';
import 'package:mason_app_project/src/template/project/lib/ui/screens/home/performance/_mobile.dart';
import 'package:mason_app_project/src/template/project/lib/ui/screens/home/performance/_tablet.dart';
import 'package:mason_app_project/src/template/project/lib/ui/screens/home/performance/_watch.dart';
import 'package:mason_app_project/src/template/project/lib/ui/screens/home/performance/screen.dart';
import 'package:mason_app_project/src/template/project/lib/ui/screens/home/performance/screen_controller.dart';
import 'package:mason_app_project/src/template/project/lib/ui/widgets/dumb/error_widget.dart';

enum ProjectComponent {
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
  screens,
  main,
  gen_project_cli
}

class FlutterProjectTemplate extends InputParam {
  FlutterProjectTemplate({required super.projectName});

  ///key path , value content
  Map<FileSystemEntity, String> template(String path) => {
        File(path + tree[ProjectComponent.base_bloc_widget]!):
            templateBaseBlocWidget,
        File(path + tree[ProjectComponent.base_screen]!): templateBaseScreen,
        File(path + tree[ProjectComponent.base_servise]!): templateBaseService,
        File(path + tree[ProjectComponent.base_theme]!): templateBaseTheme,
        File(path + tree[ProjectComponent.base_view_controller]!):
            templateBaseController,
        File(path + tree[ProjectComponent.base_widget]!): templateBaseWidget,
        Directory(path + tree[ProjectComponent.helpers]!): "",
        Directory(path + tree[ProjectComponent.models]!): "",
        File(path + tree[ProjectComponent.routes]!): templateHomeRoute,
        File(path + tree[ProjectComponent.nav_observer]!):
            templateNavigatorObserver,
        File(path + tree[ProjectComponent.router]!): templateAppRouter,
        File(path + tree[ProjectComponent.theme_servise]!):
            templateThemeServise,
        File(path + tree[ProjectComponent.dark_theme]!): templateDarkTheme,
        File(path + tree[ProjectComponent.light_theme]!): templateLightTheme,
        File(path + tree[ProjectComponent.app_theme]!): templateAppTheme,
        File(path + tree[ProjectComponent.constants]!): templateConstants,
        File(path + tree[ProjectComponent.locator]!): templateLocator,
        File(path + tree[ProjectComponent.logger]!): templateLogger,
        File(path + tree[ProjectComponent.utils]!): templateUtils,
        File(path + tree[ProjectComponent.app]!): appTemplate,
        File("$path/lib/ui/screens/home/performance/_desktop.dart"):
            desktopViewContent,
        File("$path/lib/ui/screens/home/performance/_mobile.dart"):
            mobileViewContent,
        File("$path/lib/ui/screens/home/performance/_tablet.dart"):
            tabletViewContent,
        File("$path/lib/ui/screens/home/performance/_watch.dart"):
            watchViewContent,
        File("$path/lib/ui/screens/home/performance/screen_controller.dart"):
            exampleControllerContent,
        File("$path/lib/ui/screens/home/performance/screen.dart"):
            templateHomeScreen,
        Directory("$path/lib/ui/screens/home/widgets"): "",
        File("$path/lib/ui/screens/home/index.dart"): templateIndex,
        File(path + tree[ProjectComponent.error_widget]!): errorWidgetTemplate,
        Directory("$path/lib/ui/widgets/smart"): "",
        File(path + tree[ProjectComponent.main]!): mainTemplate,
        File(path + tree[ProjectComponent.readme]!): templateReadMe,
        Directory("$path/jsons"): "",
        Directory("$path/assets/images"): "",
        Directory("$path/assets/fonts"): "",
        File(path + tree[ProjectComponent.gen_project_cli]!): templateGetInCli,
      };

  static const Map<ProjectComponent, String> tree = {
    ProjectComponent.gen_project_cli: "/lib/app/router/gen_project_cli.dart",
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
    ProjectComponent.routes: "/lib/app/router/routes/home_route",
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
