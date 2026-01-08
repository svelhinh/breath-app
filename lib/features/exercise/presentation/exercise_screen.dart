import 'package:flutter/material.dart';

/// Exercise screen where user performs the exercise.
///
/// This screen will display the exercise instructions and controls for the user
/// to perform the exercise. The screen will also display the progress of the
/// exercise and the results of the exercise.
class ExerciseScreen extends StatelessWidget {
  /// Creates a new instance of [ExerciseScreen].
  const ExerciseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Exercise'),
      ),
    );
  }
}
