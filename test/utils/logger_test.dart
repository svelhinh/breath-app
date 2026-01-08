import 'package:breath_app/utils/logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('logger.dart', () {
    test('appLoggerProvider returns logger instance', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);

      final logger = container.read(appLoggerProvider);

      expect(logger, isA<AppLogger>());
      expect(() => logger.info('ping'), returnsNormally);
    });
  });
}
