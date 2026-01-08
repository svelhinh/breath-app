import 'package:flutter/material.dart';

/// The screen shown when the app is launched.
class LandingScreen extends StatelessWidget {
  /// Creates a new instance of [LandingScreen].
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Emotion App'),
      ),
      body: const Center(
        child: Text('Landing'),
      ),
    );
  }
}
