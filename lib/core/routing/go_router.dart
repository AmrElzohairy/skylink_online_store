import 'package:go_router/go_router.dart';
import 'package:rika_online_store/core/routing/app_routes.dart';
import 'package:rika_online_store/feature/auth/presentation/ui/login_view.dart';
import 'package:rika_online_store/feature/auth/presentation/ui/sign_up_view.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: AppRoutes.login,
  routes: [
    GoRoute(
      path: AppRoutes.login,
      name: AppRoutes.login,
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      path: AppRoutes.signUp,
      name: AppRoutes.signUp,
      builder: (context, state) => const SignUpView(),
    ),
  ],
);
