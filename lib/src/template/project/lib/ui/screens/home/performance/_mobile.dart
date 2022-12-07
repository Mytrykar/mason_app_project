import 'package:mason_app_project/src/template/project_template.dart';

extension $MobileView on FlutterProjectTemplate {
  String get mobileViewContent => """
part of 'screen.dart';

class _Mobile extends BaseView<HomeController> {
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
}
