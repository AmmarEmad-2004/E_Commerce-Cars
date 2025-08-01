import 'package:cars_app/core/routing/app_routers.dart';
import 'package:cars_app/modules/onboarding/screens/onboarding_screen.dart';
import 'package:cars_app/modules/splash/screens/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final goRouter = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashScreen()),
      GoRoute(
        path: AppRouters.onboarding,
        builder: (context, state) => const OnboardingScreen(),
      ),
    ],
  );
}
