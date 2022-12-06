import 'dart:io';
import 'package:mason_app_project/src/template/widgets/example_get_widget/example_get_widget.dart';

class GetWidgetTemplate {
  // project_app
  final String projectName;
  // Example
  final String widgetName;
  // HomeScreen
  final String parent;

  final String path;

  GetWidgetTemplate(this.projectName, this.widgetName, this.parent, this.path);

  MapEntry<FileSystemEntity, String> get template =>
      MapEntry(File(path + pathWidget), templateWidget);
}
