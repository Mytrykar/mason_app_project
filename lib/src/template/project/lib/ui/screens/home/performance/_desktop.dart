import 'package:mason_app_project/src/template/project_template.dart';

extension $DesktopView on FlutterProjectTemplate {
  String get desktopViewContent => """
part of 'screen.dart';

class _Desktop extends GetView<HomeController> {
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
}
