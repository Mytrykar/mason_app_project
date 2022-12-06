class BlocWidgetTemplate {
  // project_app
  final String projectName;
  // Example
  final String widgetName;
  // HomeScreen
  final String parent;

  final String path;

  // Example
  final String? modelName;

  // jsons/response.json
  final String? modelPath;

  BlocWidgetTemplate(
      {required this.modelName,
      required this.modelPath,
      required this.projectName,
      required this.widgetName,
      required this.parent,
      required this.path});
}
