// TOOO chck this eventually - https://blog.logrocket.com/flutter-logging-best-practices/
import 'package:logger/logger.dart';

// TODO this can me moved to seperate file
enum LogLevel { info, warning, error, debug }

class AppLogger {
  final Logger _logger = Logger();

  void log({
    required LogLevel logLevel,
    required String message,
    dynamic error,
  }) {
    final level = Level.values.byName(logLevel.name);

    _logger.log(
      level,
      message,
      error,
    );
  }
}
