import 'package:change_case/change_case.dart';
import 'package:mason_app_project/src/template/bloc_widget_template.dart';
import 'package:mason_app_project/mason_app_project.dart';

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
import 'package:json_annotation/json_annotation.dart';
part '${modelName!.toSnakeCase()}_model.g.dart';

@JsonSerializable()
class ${modelName!.toPascalCase()}Model extends Equatable{
  const ${modelName!.toPascalCase()}Model($thisClasess);

  $classes

  Person(thisClasess);

  /// Connect the generated [_${Dollar.dollar}${modelName!.toPascalCase()}ModelFromJson] function to the `fromJson`
  /// factory.
  factory Person.fromJson(Map<String, dynamic> json) => _${Dollar.dollar}${modelName!.toPascalCase()}ModelFromJson(json);

  /// Connect the generated [_${Dollar.dollar}${modelName!.toPascalCase()}ModelToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() =>_${Dollar.dollar}${modelName!.toPascalCase()}ModelToJson(this);
}

""";
  }
}
