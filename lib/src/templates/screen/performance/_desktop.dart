import 'package:change_case/change_case.dart';

extension $DesktopView on ScreenTemplate {
  String get desktopViewContent => """
part of 'screen.dart';

class _Desktop extends GetView<${screenName.toPascalCase()}Controller> {
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
