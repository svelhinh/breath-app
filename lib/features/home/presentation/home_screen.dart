import 'package:flutter/material.dart';

/// Home screen where user selects which exercise to do.
///
/// This screen will display a list of exercises for the user to choose from.
/// The user can then select an exercise to perform.
class HomeScreen extends StatelessWidget {
  /// Creates a new instance of [HomeScreen].
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}
