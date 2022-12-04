library mason_app_project;

abstract class InputParam {
  // Sing in
  final String? screenName;
  // project_app
  final String projectName;
  // /home/params:
  final String? pathRoute;

  InputParam({this.pathRoute, required this.projectName, this.screenName});
}

extension Dollar on String {
  static const dollar = r"$";
}
