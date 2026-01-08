import 'package:breath_app/core/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('main.dart', () {
    testWidgets('renders BreathApp', (tester) async {
      await tester.pumpWidget(const ProviderScope(child: BreathApp()));

      expect(find.byType(MaterialApp), findsOneWidget);
    });
  });
}
