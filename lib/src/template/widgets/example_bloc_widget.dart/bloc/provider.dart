import 'package:change_case/change_case.dart';
import 'package:mason_app_project/src/template/bloc_widget_template.dart';

extension ProviderTemplate on BlocWidgetTemplate {
  String get templateProvider {
    final String model =
        modelName != null ? "${modelName!.toPascalCase()}? _data;" : "";
    final a = modelName != null
        ? """
Future<${modelName!.toPascalCase()}>? get data async{
  //TODO GET in ServiseApi
  // final response = await ApiServise.get();
  // 
  return null;
}
"""
        : "";
    return """
class ${widgetName.toPascalCase()}Provider{
  $model

}
""";
  }

  String get pathProvider =>
      "/lib/ui/screens/${parent.toSnakeCase()}/widgets/${widgetName.toSnakeCase()}_bloc_widget/bloc/provider.dart";
}
