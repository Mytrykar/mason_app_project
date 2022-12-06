import 'package:change_case/change_case.dart';
import 'package:mason_app_project/src/template/bloc_widget_template.dart';

extension StateTemplate on BlocWidgetTemplate {
  String get templateState {
    final String model =
        modelName != null ? "final ${modelName!.toPascalCase()} data;" : "";
    final modelThis = modelName != null ? "this.data" : "";
    final modelProps = modelName != null ? "data" : "";
    return """
part of 'bloc.dart';

abstract class ${widgetName.toPascalCase()}State extends Equatable {}

class InitialState extends ${widgetName.toPascalCase()}State {}

class LoadingState extends ${widgetName.toPascalCase()}State {}

class SuccessState extends ${widgetName.toPascalCase()}State {
  $model
  SuccessState($modelThis);

  @override
  // TODO: implement props
  List<Object?> get props => [$modelProps];
}
""";
  }

  String get pathState =>
      "/lib/ui/screens/${parent.toSnakeCase()}/widgets/${widgetName.toSnakeCase()}_bloc_widget/bloc/state.dart";
}
