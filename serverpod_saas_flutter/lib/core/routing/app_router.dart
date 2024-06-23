import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:serverpod_saas_flutter/features/auth/screens/login_screen.dart';
import 'package:serverpod_saas_flutter/features/auth/screens/register_screen.dart';

part 'app_router.g.dart';

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
          path: '/',
          builder: (context, state) => const LoginScreen(),
          routes: [
            GoRoute(
              path: 'register',
              builder: (context, state) => const RegisterScreen(),
            ),
          ]),
    ],
  );
}
