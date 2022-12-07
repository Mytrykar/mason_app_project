import 'package:change_case/change_case.dart';
import 'package:mason_app_project/src/template/screen_template.dart';

extension $DesktopView on ScreenTemplate {
  String get desktopViewContent => """
part of 'screen.dart';

class _Desktop extends BaseView<${screenName.toPascalCase()}Controller> {
  @override
  Map<Key,Size> sizes = {};
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

  String get desktopViewDartPath =>
      "/lib/ui/screens/${screenName.toSnakeCase()}/performance/_desktop.dart";
}
