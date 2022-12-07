import 'package:change_case/change_case.dart';
import 'package:mason_app_project/src/template/bloc_widget_template.dart';

extension ProviderTemplate on BlocWidgetTemplate {
  String get templateProvider {
    return """
part of 'bloc.dart';

class ${widgetName.toPascalCase()}Provider{
  // final apiServise = locator<ApiServise>;
  // final localStorageServise = locator<LocalStorageServise>;
}
""";
  }

  String get pathProvider =>
      "/lib/ui/screens/${parent.toSnakeCase()}/widgets/${widgetName.toSnakeCase()}_bloc_widget/bloc/provider.dart";
}
