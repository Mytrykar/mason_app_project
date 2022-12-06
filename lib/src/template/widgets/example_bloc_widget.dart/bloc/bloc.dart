import 'package:change_case/change_case.dart';
import 'package:mason_app_project/src/template/bloc_widget_template.dart';

extension WidgetTemplate on BlocWidgetTemplate {
  String get templateBlocWidget {
    //TODO реалізовати загрузку моделі
    return """
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'provider.dart';
part 'event.dart';
part 'state.dart';

class ${widgetName.toPascalCase()}Bloc extends Bloc<${widgetName.toPascalCase()}Event, ${widgetName.toPascalCase()}State> {
  ${widgetName.toPascalCase()}Provider provider = ${widgetName.toPascalCase()}Provider();
  ${widgetName.toPascalCase()}Bloc() : super(InitialState()) {
    on<GetApiEvent>((event, emit) async {
      emit(LoadingState());
      await Future.delayed(const Duration(seconds: 2));
      emit(SuccessState());
    });
  }
}
""";
  }
}
