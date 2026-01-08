import 'package:breath_app/core/routing/app_router.dart';
import 'package:breath_app/features/welcome/presentation/welcome_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intro_slider/intro_slider.dart';

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
    Future<void> completeOnboarding() async {
      await ref.read(welcomeControllerProvider).completeOnboarding();
      if (context.mounted) context.goNamed(AppRoute.home.name);
    }

    return Scaffold(
      body: IntroSlider(
        listContentConfig: [
          ContentConfig(
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                'Sed do eiusmod tempor incididunt ut labore et dolore magna '
                'aliqua.',
            centerWidget: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                height: 304,
                child: Card(
                  color: Colors.grey.shade300,
                  child: const Center(
                    child: Icon(
                      Icons.image,
                      size: 96,
                    ),
                  ),
                ),
              ),
            ),
            styleDescription: TextStyle(
              fontSize: 16,
              color: Colors.grey.shade700,
            ),
            marginTitle: EdgeInsets.zero,
            marginDescription: const EdgeInsets.only(
              left: 24,
              right: 24,
              top: 73,
            ),
          ),
          ContentConfig(
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                'Sed do eiusmod tempor incididunt ut labore et dolore magna '
                'aliqua.',
            centerWidget: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                height: 304,
                child: Card(
                  color: Colors.grey.shade300,
                  child: const Center(
                    child: Icon(
                      Icons.image,
                      size: 96,
                    ),
                  ),
                ),
              ),
            ),
            styleDescription: TextStyle(
              fontSize: 16,
              color: Colors.grey.shade700,
            ),
            marginTitle: EdgeInsets.zero,
            marginDescription: const EdgeInsets.only(
              left: 24,
              right: 24,
              top: 73,
            ),
          ),
          ContentConfig(
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                'Sed do eiusmod tempor incididunt ut labore et dolore magna '
                'aliqua.',
            centerWidget: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                height: 304,
                child: Card(
                  color: Colors.grey.shade300,
                  child: const Center(
                    child: Icon(
                      Icons.image,
                      size: 96,
                    ),
                  ),
                ),
              ),
            ),
            styleDescription: TextStyle(
              fontSize: 16,
              color: Colors.grey.shade700,
            ),
            marginTitle: EdgeInsets.zero,
            marginDescription: const EdgeInsets.only(
              left: 24,
              right: 24,
              top: 73,
            ),
          ),
        ],
        renderSkipBtn: const Text(
          'Skip',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        renderNextBtn: const Row(
          children: [
            Text(
              'Next',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            Icon(Icons.navigate_next, color: Colors.black),
          ],
        ),
        renderDoneBtn: const Text(
          'Done',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        isShowPrevBtn: true,
        renderPrevBtn: const Icon(Icons.navigate_before, color: Colors.black),
        indicatorConfig: const IndicatorConfig(
          colorIndicator: Colors.black54,
          colorActiveIndicator: Colors.black,
          spaceBetweenIndicator: 8,
          typeIndicatorAnimation: TypeIndicatorAnimation.sizeTransition,
        ),
        onSkipPress: completeOnboarding,
        onDonePress: completeOnboarding,
      ),
    );
  }
}
