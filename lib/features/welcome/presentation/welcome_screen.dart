import 'package:breath_app/core/routing/app_router.dart';
import 'package:breath_app/features/welcome/presentation/welcome_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

/// Welcome screen shown on first app launch.
///
/// This screen will display some slides to explain the app and its features.
/// The user can then select the "Next" button to go to the next slide.
/// The user can then select the "Skip" button to skip the slides and go to the
/// home screen.
class WelcomeScreen extends ConsumerWidget {
  /// Creates a new instance of [WelcomeScreen].
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text('Welcome'),
            TextButton(
              onPressed: () async {
                await ref.read(welcomeControllerProvider).completeOnboarding();
                if (context.mounted) context.goNamed(AppRoute.home.name);
              },
              child: const Text('Complete Onboarding'),
            ),
          ],
        ),
      ),
    );
  }
}
