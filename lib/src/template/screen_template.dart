library gen_new_screen;

class ScreenTemplate {
  final String projectName;
  final String screenName;
  final List<String> locations;

  const ScreenTemplate(
      {required this.projectName,
      required this.screenName,
      required this.locations});

  void get existScreen {}
}
