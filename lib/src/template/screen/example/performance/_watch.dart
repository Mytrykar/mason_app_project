import 'package:change_case/change_case.dart';
import 'package:mason_app_project/src/template/screen_template.dart';

extension $WatchView on ScreenTemplate {
  String get watchViewContent => """
part of 'screen.dart';

class _Watch extends GetView<${screenName.toPascalCase()}Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (p0, p1) {
          return Container();
        },
      ),
    );
  }
}
""";

  String get watchViewDartPath =>
      "/lib/ui/screens/${screenName.toSnakeCase()}/performance/_watch.dart";
}
