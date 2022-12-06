import 'dart:convert';
import 'dart:io';
import 'package:mason_app_project/src/template/widgets/example_bloc_widget/bloc/bloc.dart';
import 'package:mason_app_project/src/template/widgets/example_bloc_widget/bloc/event.dart';
import 'package:mason_app_project/src/template/widgets/example_bloc_widget/bloc/provider.dart';
import 'package:mason_app_project/src/template/widgets/example_bloc_widget/bloc/state.dart';
import 'package:mason_app_project/src/template/widgets/example_bloc_widget/example_bloc_widget.dart';

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
  final String? responseJsonPath;

  // final Map<String,dynamic>

  BlocWidgetTemplate(
      {required this.modelName,
      required this.modelPath,
      required this.projectName,
      required this.widgetName,
      required this.parent,
      required this.path});

  Map<File, String> get template => {
        File(path + pathBlocWidget): templateBlocWidget,
        File(path + pathBloc): templateBloc,
        File(path + pathEvent): templateEvent,
        File(path + pathState): templateState,
        File(path + pathProvider): templateProvider,
        if (responseJsonPath != null) File(path+):modelTemplate
      };
  // [num], [String], [bool], [Null], [List] or [Map] value.
  String get modelTemplate {}
}
