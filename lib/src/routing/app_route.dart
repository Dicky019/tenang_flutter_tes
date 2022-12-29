import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tenang_flutter_tes/src/features/dasboard/presentation/dasboard_screen.dart';

import '../features/auth/data/auth_repository.dart';

// Screen
import '../features/auth/presentation/sign_in/sign_in_screen.dart';
import '../features/auth/presentation/sign_up/sign_up_screen.dart';
import '../features/search/presentation/search_screen.dart';
import '../features/splash/presentation/splash_screen.dart';
import '../features/onboarding/presentation/onboarding_screen.dart';

enum RouteApp {
  init(path: "/splash", name: "splash screen"),
  onboarding(path: "/onboarding", name: "login"),
  dasboard(path: "/", name: "dasboard"),
  search(path: "search", name: "search"),
  signIn(path: "/signin", name: "sign in"),
  signUp(path: "/signup", name: "sign up");

  const RouteApp({required this.path, required this.name});
  final String path, name;
}

final goRouterProvider = Provider<GoRouter>(
  (ref) {
    final authRepository = ref.read(authRepositoryProvider);

    return GoRouter(
      initialLocation: RouteApp.init.path,
      debugLogDiagnostics: true,
      routes: [
        GoRoute(
          path: RouteApp.init.path,
          name: RouteApp.init.name,
          builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
          path: RouteApp.onboarding.path,
          name: RouteApp.onboarding.name,
          builder: (context, state) => const OnboardingScreen(),
        ),
        GoRoute(
          path: RouteApp.dasboard.path,
          name: RouteApp.dasboard.name,
          builder: (context, state) => const DasboardScreen(),
          redirect: (context, state) {
            final loggedIn =
                authRepository.getCurentUser == null ? false : true;
            final loggingIn = state.location == RouteApp.signIn.path;
            if (!loggedIn) return loggingIn ? null : RouteApp.signIn.path;
            return null;
          },
          routes: [
            GoRoute(
              path: RouteApp.search.path,
              name: RouteApp.search.name,
              builder: (context, state) => const SearchScreen(),
            ),
          ],
        ),
        GoRoute(
          path: RouteApp.signIn.path,
          name: RouteApp.signIn.name,
          builder: (context, state) => const SignInScreen(),
        ),
        GoRoute(
          path: RouteApp.signUp.path,
          name: RouteApp.signUp.name,
          builder: (context, state) => const SignUpScreen(),
        ),
      ],
    );
  },
);
