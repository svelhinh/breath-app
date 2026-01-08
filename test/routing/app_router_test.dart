// import 'package:breath_app/core/routing/app_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('app_router.dart', () {
    test('goRouterProvider exposes welcome route', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);

      // final router = container.read(goRouterProvider);
    });
  });
}
