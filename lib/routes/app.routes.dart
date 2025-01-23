import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../features/intro/presentation/pages/loading.page.dart';
import '../features/intro/presentation/pages/splash.page.dart';
import '../helpers/utils.dart';

class AppRoutes {
  static final router = GoRouter(
    initialLocation: SplashPage.route,
    navigatorKey: Utils.mainNav,
    errorPageBuilder: (context, state) {
      return MaterialPage(
        key: state.pageKey,
        child: Scaffold(
          appBar: AppBar(title: const Text('Error')),
          body: const Center(child: Text('Page not found')),
        ),
      );
    },
    routes: [
      GoRoute(
        parentNavigatorKey: Utils.mainNav,
        path: SplashPage.route,
        builder: (context, state) {
          return const SplashPage();
        },
      ),
      GoRoute(
        parentNavigatorKey: Utils.mainNav,
        path: LoadingPage.route,
        builder: (context, state) {
          return const LoadingPage();
        },
      ),
    ],
  );
}
