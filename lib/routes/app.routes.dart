import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/features/devices/presentation/pages/device_details.page.dart';
import 'package:smart_home/features/devices/presentation/pages/devices.page.dart';
import 'package:smart_home/features/landing/presentation/pages/home.page.dart';
import 'package:smart_home/features/landing/presentation/pages/landing.page.dart';
import 'package:smart_home/features/rooms/rooms.page.dart';
import 'package:smart_home/features/settings/settings.page.dart';
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
      ShellRoute(
          navigatorKey: Utils.tabNav,
          builder: (context, state, child) {
            return LandingPage(child: child);
          },
          routes: [
            GoRoute(
              parentNavigatorKey: Utils.tabNav,
              path: HomePage.route,
              pageBuilder: (context, state) {
                return const NoTransitionPage(
                  child: HomePage(),
                );
              },
            ),
            GoRoute(
              parentNavigatorKey: Utils.tabNav,
              path: RoomsPage.route,
              pageBuilder: (context, state) {
                return const NoTransitionPage(
                  child: RoomsPage(),
                );
              },
            ),
            GoRoute(
              parentNavigatorKey: Utils.tabNav,
              path: DevicesPage.route,
              pageBuilder: (context, state) {
                return const NoTransitionPage(
                  child: DevicesPage(),
                );
              },
            ),
            GoRoute(
              parentNavigatorKey: Utils.tabNav,
              path: SettingsPage.route,
              pageBuilder: (context, state) {
                return const NoTransitionPage(
                  child: SettingsPage(),
                );
              },
            ),
          ]
      ),
      GoRoute(
        parentNavigatorKey: Utils.mainNav,
        path: DeviceDetailsPage.route,
        builder: (context, state) {
          return const DeviceDetailsPage();
        },
      ),
    ],
  );
}
