import 'package:go_router/go_router.dart';
import 'package:spotify_clone/src/presentation/screens/screens.dart';

/// AppRoutes is a class that contains all the routes of the app.
class AppRoutes {
  /// AppRoutes Getter
  static List<GoRoute> get routes {
    return [
      GoRoute(
        path: '/',
        name: 'SplashScreen',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/welcome',
        name: 'WelcomeScreen',
        builder: (context, state) => const WelcomeScreen(),
      ),
      GoRoute(
        path: '/createAccount',
        name: 'CreateAccountScreen',
        builder: (context, state) => const CreateAccountScreen(),
      ),
    ];
  }
}
