import 'package:fitrat_parent2/presentation/login/pages/login_screen.dart';
import 'package:fitrat_parent2/presentation/main/pages/main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static const login = '/login';
  static const home = '/home';

  CustomTransitionPage buildPageWithDefaultTransition<T>({
    required BuildContext context,
    required GoRouterState state,
    required Widget child,
  }) {
    return CustomTransitionPage<T>(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          FadeTransition(opacity: animation, child: child),
    );
  }
}
final router = GoRouter(
    routes: [
      GoRoute(
        path: AppRoutes.login,
        builder: (context, state) {
          return LoginScreen();
        },
      ),
      GoRoute(
        path: AppRoutes.home,
        builder: (context, state) {
          return HolderScreen();
        },
      ),
    ]);