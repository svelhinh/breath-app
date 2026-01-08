import 'package:breath_app/features/landing/presentation/landing_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('landing_screen.dart', () {
    testWidgets('renders LandingScreen', (tester) async {
      await tester.pumpWidget(const MaterialApp(home: LandingScreen()));

      expect(find.byType(Scaffold), findsOneWidget);
    });
  });
}
