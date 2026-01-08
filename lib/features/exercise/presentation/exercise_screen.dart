import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(Icons.close),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 76, horizontal: 52),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 304,
                    height: 304,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade300,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.image,
                        size: 64,
                      ),
                    ),
                  ),
                  const SizedBox(height: 35),
                  const Text('lorem ipsum dolor sit amet'),
                  const SizedBox(height: 16),
                  const Text('lorem ipsum dolor sit amet'),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: CircleAvatar(
                    radius: 36,
                    backgroundColor: Colors.grey.shade300,
                    child: const Icon(Icons.play_arrow),
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: CircleAvatar(
                    radius: 36,
                    backgroundColor: Colors.grey.shade300,
                    child: const Icon(Icons.play_arrow),
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: CircleAvatar(
                    radius: 36,
                    backgroundColor: Colors.grey.shade300,
                    child: const Icon(Icons.play_arrow),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
