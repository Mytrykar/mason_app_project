import 'package:mason_app_project/src/template/project_template.dart';

extension Logger on FlutterProjectTemplate {
  String get templateLogger => """
import 'package:logger/logger.dart';
import 'dart:developer' as prefix0;

class SimpleLogPrinter extends LogPrinter {
  static int counter = 0;
  final String className;

  SimpleLogPrinter(this.className);

  @override
  List<String> log(LogEvent event) {
    prefix0.log(
      event.message,
      time: DateTime.now(),
      level: () {
        switch (event.level) {
          case Level.verbose:
            return 0;
          case Level.debug:
            return 500;
          case Level.info:
            return 0;
          case Level.warning:
            return 1500;
          case Level.error:
            return 2000;
          case Level.wtf:
            return 2000;
          default:
            return 2000;
        }
      }(),
      name: className,
      error: event.error,
      sequenceNumber: counter += 1,
    );

    return [];
  }
}

Logger getLogger(String className) {
  return Logger(printer: SimpleLogPrinter(className));
}
""";
}
