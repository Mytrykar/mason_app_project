import 'package:change_case/change_case.dart';
import 'package:mason_app_project/src/template/bloc_widget_template.dart';

extension EventTemplate on BlocWidgetTemplate {
  String get templateEvent {
    return """
part of 'bloc.dart';

abstract class ${widgetName.toPascalCase()}Event {}

class GetApiEvent extends ${widgetName.toPascalCase()}Event {}
""";
  }

  String get pathEvent =>
      "/lib/ui/screens/${parent.toSnakeCase()}/widgets/${widgetName.toSnakeCase()}_bloc_widget/bloc/event.dart";
}
