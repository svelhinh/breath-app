import 'package:breath_app/core/widgets/not_found_screen.dart';
import 'package:breath_app/features/exercise/presentation/exercise_screen.dart';
import 'package:breath_app/features/home/presentation/home_screen.dart';
import 'package:breath_app/features/welcome/presentation/welcome_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

/// Enum representing all defined navigation routes within the app.
///
/// Each value corresponds to a key screen in the application:
/// - [welcome]: Presented on initial launch, guiding users through onboarding.
/// - [home]: The main hub screen, shown after onboarding is complete.
/// - [exercise]: The dedicated area for performing guided exercises.
enum AppRoute {
  /// Route for onboarding and initial app introduction.
  welcome,

  /// Route for the main home screen after onboarding.
  home,

  /// Route for accessing the guided exercise features.
  exercise,
}

/// Provides the application's main [GoRouter] for handling navigation.
final goRouterProvider = Provider<GoRouter>((ref) {
  final router = GoRouter(
    initialLocation: '/welcome',
    routes: [
      GoRoute(
        path: '/${AppRoute.welcome.name}',
        name: AppRoute.welcome.name,
        builder: (c, s) => const WelcomeScreen(),
      ),
      GoRoute(
        path: '/${AppRoute.home.name}',
        name: AppRoute.home.name,
        builder: (c, s) => const HomeScreen(),
      ),
      GoRoute(
        path: '/${AppRoute.exercise.name}',
        name: AppRoute.exercise.name,
        builder: (c, s) => const ExerciseScreen(),
      ),
    ],
    // redirect: (context, state) async {
    //   final complete = await ref.read(onboardingCompleteProvider.future);
    //   final isOnWelcome = state.matchedLocation == '/${AppRoute.welcome.name}';

    //   if (!complete) return isOnWelcome ? null : '/${AppRoute.welcome.name}';
    //   return isOnWelcome ? '/${AppRoute.home.name}' : null;
    // },
    errorBuilder: (context, state) => const NotFoundScreen(),
  );

  ref.onDispose(router.dispose);
  return router;
});
