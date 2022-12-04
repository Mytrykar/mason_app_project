import '../gen_screen.dart';

extension Router on ScreenTemplate{
  
  String routerContent(String lastContent){
    final contentWithLines = lastContent.split("""
""");
    int indexPath = contentWithLines.lastIndexWhere((element) => element.startsWith("part"));
    contentWithLines.insert(indexPath, "");
  
  }

}
part '../template/observer.dart';
part '../template/router.g.dart';
part '../template/routes/home_route.dart';
part '../template/routes/example_route.dart';

// Gen_project_cli: /example
@TypedGoRoute<ExampleRoute>(
  path: '/example',
  routes: <TypedGoRoute<GoRouteData>>[
// Gen_project_cli: /example/example2/:tag
    TypedGoRoute<ExampleRoute2>(
      path: 'example2/:tag',
    ),
  ],
)
String routerTag(int level, String route) =>
    "// Gen_project_cli_router level $level $route";
