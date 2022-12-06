import 'package:change_case/change_case.dart';
import 'package:mason_app_project/src/template/bloc_widget_template.dart';

extension ModelTemplate on BlocWidgetTemplate {
  String get pathModel =>
      "/lib/app/models/${modelName!.toSnakeCase()}/${modelName!.toSnakeCase()}_model.dart";

// classes:
// final String response;
// final int? rhreder;
// ...
//
// thisClasses:
// this.response,this.rhreder...
  String modelTemplate(String classes, String thisClasess) {
    return """
part '${modelName!.toSnakeCase()}_model.g.dart';

@JsonSeriable //TODO перевірити правильність анотації
class ${modelName!.toPascalCase()}Model extends Equateble{
 const ${modelName!.toPascalCase()}Model($thisClasess);
}

""";
  }
}
