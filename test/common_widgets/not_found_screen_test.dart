import 'package:breath_app/core/widgets/not_found_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('not_found_screen.dart', () {
    testWidgets('renders NotFoundScreen', (tester) async {
      await tester.pumpWidget(const MaterialApp(home: NotFoundScreen()));

      expect(find.byType(Scaffold), findsOneWidget);
    });
  });
}
