class ScreenParameters {
  final List<String> routes;
  final String screenName;
  final File routerFile;
  final Directory? screensDir;
  final Directory routesDir;
  final String projectName;

  ScreenParameters(this.projectName,
      {required this.routes,
      required this.routerFile,
      required this.screenName,
      this.screensDir,
      required this.routesDir});

  factory ScreenParameters.named(List<String> routes, String screenName) {
    final _d = Directory.current.path;
    final File routerFile = File("$_d/lib/app/router/router.dart");
    Directory? screensDir;
    final Directory routesDir = Directory("$_d/lib/app/router/routes");

    if (!ScreenParameters.exist(screenName)) {
      screensDir = Directory("$_d/lib/ui/screens");
    }
    if (!routerFile.existsSync() || !routesDir.existsSync()) {
      throw "Creation is impossible";
    }
    return ScreenParameters(Helper.projectName,
        routerFile: routerFile,
        routes: routes,
        routesDir: routesDir,
        screenName: screenName,
        screensDir: screensDir);
  }

  static bool exist(String screenName) {
    final _d = Directory.current.path;
    return File("$_d/lib/ui/screens/${screenName.toSnakeCase()}").existsSync();
  }
}

abstract class $Gen {
  Future<void> run();
}

class $GenNewScreen implements $Gen {
  final ScreenParameters genParameters;

  $GenNewScreen(this.genParameters);

  @override
  Future<void> run() async {
    if (genParameters.screensDir == null) return;
    throw UnimplementedError();
  }
}
