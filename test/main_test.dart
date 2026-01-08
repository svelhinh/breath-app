import 'package:breath_app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('main.dart', () {
    testWidgets('renders EmotionApp', (tester) async {
      await tester.pumpWidget(const ProviderScope(child: EmotionApp()));

      expect(find.byType(MaterialApp), findsOneWidget);
    });
  });
}
