import 'package:mason_app_project/src/template/project_template.dart';
import 'package:mason_app_project/mason_app_project.dart' as e;

extension Router on FlutterProjectTemplate {
  String get templateRouter {
    return '''part of 'router.dart';

class _DebugObserver extends NavigatorObserver {
  Logger log = getLogger("DebugRouteObserver");

  @override
  void didPop(Route route, Route? previousRoute) {
    log.i("""Pop
Route transition: ${e.Dollar.dollar}{previousRoute?.settings.name} to ${e.Dollar.dollar}{route.settings.name}""");
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    log.i("""Push
Route transition: ${e.Dollar.dollar}{previousRoute?.settings.name} to ${e.Dollar.dollar}{route.settings.name}""");
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    log.i("""Remove
Route transition: ${e.Dollar.dollar}{previousRoute?.settings.name} to ${e.Dollar.dollar}{route.settings.name}""");
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    log.i("""Replace
Route transition: ${e.Dollar.dollar}{oldRoute?.settings.name} to ${e.Dollar.dollar}{newRoute?.settings.name}""");
  }

  @override
  void didStartUserGesture(Route route, Route? previousRoute) {
    log.i("""StartUserGesture
Route transition: ${e.Dollar.dollar}{previousRoute?.settings.name} to ${e.Dollar.dollar}{route.settings.name}""");
  }

  @override
  void didStopUserGesture() {
    log.i("StopUserGesture");
  }
}
''';
  }
}
