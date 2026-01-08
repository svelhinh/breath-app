import 'package:breath_app/features/welcome/data/onboarding_prefs.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Makes available an [WelcomeController] to manage welcome persistence
/// and update logic in the app.
final welcomeControllerProvider = Provider<WelcomeController>(
  WelcomeController.new,
);

/// Encapsulates all logic related to welcome state persistence and update logic
/// in the app.
class WelcomeController {
  /// Constructs an [WelcomeController] using a [Ref] to lookup providers.
  WelcomeController(this.ref);

  /// The provider container reference, used for accessing and updating state.
  final Ref ref;

  /// Sets the onboarding status to complete in shared preferences,
  Future<void> completeOnboarding() async {
    await ref.read(onboardingControllerProvider).markComplete();
  }
}
