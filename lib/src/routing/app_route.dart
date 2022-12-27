import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

// import 'package:shared_preferences/shared_preferences.dart';

// Screen
import '../features/home/presentation/home_screen.dart';
import '../features/splash/presentation/splash_screen.dart';
import '../features/onboarding/presentation/onboarding_screen.dart';

enum RouteApp {
  init(path: "/splash", name: "splash screen"),
  // login(path: "login", name: "login"),
  home(path: "/", name: "home"),
  onboarding(path: "/onboarding", name: "login");

  const RouteApp({required this.path, required this.name});
  final String path, name;
}

final goRouterProvider = Provider<GoRouter>(
  (ref) {
    // final authRepository = ref.watch(authenticationRepositoryProvider);

    return GoRouter(
      initialLocation: RouteApp.home.path,
      debugLogDiagnostics: true,
      redirect: (context, state) {
        // final loggedIn = authRepository.currentUser == null ? false : true;
        // final loggingIn = state.location == '/login';
        // if (!loggedIn) return loggingIn ? null : '/login';
        return null;
      },
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
          path: RouteApp.home.path,
          name: RouteApp.home.name,
          builder: (context, state) => const HomeScreen(),
          redirect: (context, state) async {
            // final prefs = await SharedPreferences.getInstance();
            // prefs.get("key");
            return null;
          },
        )
      ],
    );
  },
);
