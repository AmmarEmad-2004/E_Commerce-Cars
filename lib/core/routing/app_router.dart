import 'package:cars_app/core/routing/app_routers.dart';
import 'package:cars_app/modules/auth/presentation/screens/log_in_screen.dart';
import 'package:cars_app/modules/auth/presentation/screens/sign_up_screen.dart';
import 'package:cars_app/modules/home/presentation/screens/home_screen.dart';
import 'package:cars_app/modules/onboarding/screens/onboarding_screen.dart';
import 'package:cars_app/modules/splash/screens/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final goRouter = GoRouter(
    routes: [
      GoRoute(
        path: AppRouters.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: AppRouters.onboarding,
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: AppRouters.signUp,
        builder: (context, state) => const SignUpScreen(),
      ),
      GoRoute(
        path: AppRouters.logIn,
        builder: (context, state) => const LogInScreen(),
      ),
      GoRoute(
        path: AppRouters.home,
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}
