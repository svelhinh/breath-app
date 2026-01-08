import 'dart:developer' as developer;

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Lightweight application logger, overridable in tests.
class AppLogger {
  /// Creates a new instance of [AppLogger].
  const AppLogger();

  /// Logs an info message.
  void info(String message, {Object? error, StackTrace? stackTrace}) {
    _log('info', message, error: error, stackTrace: stackTrace);
  }

  /// Logs a warning message.
  void warning(String message, {Object? error, StackTrace? stackTrace}) {
    _log('warning', message, error: error, stackTrace: stackTrace);
  }

  /// Logs an error message.
  void error(String message, {Object? error, StackTrace? stackTrace}) {
    _log('error', message, error: error, stackTrace: stackTrace);
  }

  void _log(
    String level,
    String message, {
    Object? error,
    StackTrace? stackTrace,
  }) {
    final formatted = '[$level] $message';

    if (kDebugMode) {
      debugPrint(error != null ? '$formatted — error: $error' : formatted);
      if (stackTrace != null) {
        debugPrint(stackTrace.toString());
      }
      return;
    }

    developer.log(
      formatted,
      level: level == 'error' ? 1000 : 800,
      error: error,
      stackTrace: stackTrace,
    );
  }
}

/// Provider for the application logger.
final appLoggerProvider = Provider<AppLogger>((ref) => const AppLogger());
