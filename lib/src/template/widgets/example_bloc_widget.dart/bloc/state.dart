import 'package:change_case/change_case.dart';
import 'package:mason_app_project/src/template/bloc_widget_template.dart';

extension WidgetTemplate on BlocWidgetTemplate {
  String get templateBlocWidget => """
part of 'bloc.dart';

abstract class ${widgetName.toPascalCase()}State extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class InitialState extends ${widgetName.toPascalCase()}State {}

class LoadingState extends ${widgetName.toPascalCase()}State {}

class SuccessState extends ${widgetName.toPascalCase()}State {
  final String data = "data";

  @override
  // TODO: implement props
  List<Object?> get props => [data];
}
""";
}
