import 'package:change_case/change_case.dart';
import 'package:mason_app_project/src/template/bloc_widget_template.dart';

extension StateTemplate on BlocWidgetTemplate {
  String get templateState {
    return """
part of 'bloc.dart';

abstract class ${widgetName.toPascalCase()}Event {}

class GetApiEvent extends ${widgetName.toPascalCase()}Event {}
""";
  }

  String get pathBlocState =>
      "/lib/ui/screens/${parent.toSnakeCase()}/widgets/${widgetName.toSnakeCase()}_bloc_widget/bloc/event.dart";
}
