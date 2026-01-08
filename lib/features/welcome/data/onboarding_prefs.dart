import 'package:breath_app/core/storage/shared_preferences_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const _kOnboardingCompleteKey = 'onboarding_complete';

/// Exposes the onboarding completion status as a [FutureProvider<bool>].
/// Returns `true` if onboarding has been marked complete in app preferences,
/// otherwise returns `false` (including on first launch).
final onboardingCompleteProvider = FutureProvider<bool>((ref) async {
  final prefs = await ref.watch(sharedPreferencesProvider.future);
  return prefs.getBool(_kOnboardingCompleteKey) ?? false;
});

/// Makes available an [OnboardingController] to manage onboarding persistence
/// and update logic in the app.
final onboardingControllerProvider = Provider<OnboardingController>(
  OnboardingController.new,
);

/// Encapsulates all logic related to onboarding state persistence,
/// allowing onboarding to be marked complete and exposing relevant methods.
class OnboardingController {
  /// Constructs an [OnboardingController] using a [Ref] to lookup providers.
  OnboardingController(this.ref);

  /// The provider container reference, used for accessing and updating state.
  final Ref ref;

  /// Sets the onboarding status to complete in shared preferences,
  /// and updates dependents by invalidating [onboardingCompleteProvider].
  Future<void> markComplete() async {
    final prefs = await ref.read(sharedPreferencesProvider.future);
    await prefs.setBool(_kOnboardingCompleteKey, true);
    ref.invalidate(onboardingCompleteProvider);
  }
}
