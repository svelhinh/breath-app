import 'package:flutter/material.dart';

/// The screen shown when a route is not found.
class NotFoundScreen extends StatelessWidget {
  /// Creates a new instance of [NotFoundScreen].
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Not Found'),
      ),
      body: const Center(
        child: Text('Page not found'),
      ),
    );
  }
}
