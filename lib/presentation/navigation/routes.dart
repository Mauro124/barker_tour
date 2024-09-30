import 'package:barker_tour/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

CustomTransitionPage _buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    opaque: true,
    transitionDuration: const Duration(milliseconds: 100),
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
  );
}

class Route {
  final String path;
  final String name;
  final IconData icon;

  Route({
    required this.path,
    required this.name,
    required this.icon,
  });

  String get title => name;
  IconData get iconData => icon;
}

enum Routes {
  splash(path: '/splash', name: 'Splash', icon: Icons.home),
  home(path: '/home', name: 'Inicio', icon: Icons.home);

  final String path;
  final String name;
  final IconData icon;

  const Routes({
    required this.path,
    required this.name,
    required this.icon,
  });
}

final router = GoRouter(
  initialLocation: Routes.splash.path,
  routes: [
    GoRoute(
      path: Routes.splash.path,
      name: Routes.splash.name,
      pageBuilder: (context, state) {
        return _buildPageWithDefaultTransition<void>(context: context, state: state, child: const SplashPage());
      },
    ),
    GoRoute(
      path: Routes.home.path,
      name: Routes.home.name,
      pageBuilder: (context, state) {
        return _buildPageWithDefaultTransition<void>(context: context, state: state, child: const SplashPage());
      },
    ),
  ],
);
