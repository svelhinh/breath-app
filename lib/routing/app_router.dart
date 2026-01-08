import 'package:breath_app/common_widgets/not_found_screen.dart';
import 'package:breath_app/features/landing/presentation/landing_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

/// The routes of the app.
enum AppRoute {
  /// The landing route.
  landing,
}

/// The provider for the [GoRouter] instance.
final goRouterProvider = Provider<GoRouter>((ref) {
  final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: AppRoute.landing.name,
        builder: (context, state) => const LandingScreen(),
      ),
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );

  ref.onDispose(router.dispose);
  return router;
});
