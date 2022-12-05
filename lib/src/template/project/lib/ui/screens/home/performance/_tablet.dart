import 'package:mason_app_project/src/template/project_template.dart';

extension $TabletView on FlutterProjectTemplate {
  String get tabletViewContent => """
part of 'screen.dart';

class _Tablet extends GetView<HomeController> {
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
