import 'package:change_case/change_case.dart';
import 'package:mason_app_project/src/template/screen_template.dart';

extension $TabletView on ScreenTemplate {
  String get tabletViewContent => """
part of 'screen.dart';

class _Tablet extends BaseView<${screenName.toPascalCase()}Controller> {
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

  String get tabletViewDartPath =>
      "/lib/ui/screens/${screenName.toSnakeCase()}/performance/_tablet.dart";
}
