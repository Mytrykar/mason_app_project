import 'package:change_case/change_case.dart';
import 'package:mason_app_project/src/template/bloc_widget_template.dart';

extension ProviderTemplate on BlocWidgetTemplate {
  String get templateProvider {
    final String import = modelName != null
        ? "import 'package:${projectName.toSnakeCase()}/app/models/${modelName!.toSnakeCase()}/${modelName!.toSnakeCase()}_model.dart"
        : "";
    final String model =
        modelName != null ? "${modelName!.toPascalCase()}? _data;" : "";
    final a = modelName != null
        ? """
Future<${modelName!.toPascalCase()}>? get data async{
  //TODO GET in ServiseApi
  // final response = await ApiServise.get();
  // _data = response;
  // return _data;
  return null;
}
"""
        : "";
    final b = modelName != null
        ? """
${modelName!.toPascalCase()}? get current => _data;
"""
        : "";
    return """
$import

class ${widgetName.toPascalCase()}Provider{
  // final apiServise = locator<ApiServise>;
  // final localStorageServise = locator<LocalStorageServise>;
  $model
  $a
  $b
}
""";
  }

  String get pathProvider =>
      "/lib/ui/screens/${parent.toSnakeCase()}/widgets/${widgetName.toSnakeCase()}_bloc_widget/bloc/provider.dart";
}
