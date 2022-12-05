import 'package:mason_app_project/src/template/project_template.dart';

extension $WatchView on FlutterProjectTemplate {
  String get watchViewContent => """
part of 'screen.dart';

class _Watch extends GetView<HomeController> {
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
