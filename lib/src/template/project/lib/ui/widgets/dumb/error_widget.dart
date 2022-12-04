import 'package:mason_app_project/src/template/project_template.dart';

extension ErrorWidget on FlutterProjectTemplate {
  String get mainTemplate => """import 'package:flutter/material.dart';

class ErrorWidget extends StatelessWidget {
  const ErrorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Oops...", style: TextStyle(color: Colors.red)),
    );
  }
}
""";
}
