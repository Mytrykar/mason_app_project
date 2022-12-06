import 'package:change_case/change_case.dart';
import 'package:mason_app_project/src/template/bloc_widget_template.dart';

extension WidgetTemplate on BlocWidgetTemplate {
  String get templateBlocWidget => """
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:${projectName.toSnakeCase()}/app/core/base/base_bloc_widget.dart';
import 'package:${projectName.toSnakeCase()}/ui/screens/${parent.toSnakeCase()}/performance/screen_controller.dart';
import 'package:${projectName.toSnakeCase()}/ui/screens/${parent.toSnakeCase()}/widgets/${widgetName.toSnakeCase()}_bloc_widget.dart/bloc/bloc.dart';

class ${widgetName.toPascalCase()}BlocWidget extends BaseBlocWidget<${parent.toPascalCase()}ScreenController> {
  const ${widgetName.toPascalCase()}BlocWidget({super.key});

  @override
  State<${widgetName.toPascalCase()}BlocWidget> createState() => _${widgetName.toPascalCase()}BlocWidgetState();
}

class _${widgetName.toPascalCase()}BlocWidgetState extends State<${widgetName.toPascalCase()}BlocWidget> {
  ${widgetName.toPascalCase()}Bloc bloc = ${widgetName.toPascalCase()}Bloc();

  @override
  void initState() {
    bloc.add(GetApiEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<${widgetName.toPascalCase()}Bloc, ${widgetName.toPascalCase()}State>(
      bloc: bloc,
      listener: (context, state) {
        //TODO You can make callbacks in ${widgetName.toPascalCase()}ScreenController to rearrange other widgets
        // Example: widget.controller.rebuildOtherWidget(param);
      },
      builder: (context, state) {
        if (state is InitialState) {
          return const SizedBox.expand();
        }
        if (state is LoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is SuccessState) {
          return Text(state.data.toString);
        }
        return SizedBox.expand();
      },
    );
  }
}
""";
}
