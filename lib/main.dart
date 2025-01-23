import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smart_home/routes/app.routes.dart';
import 'package:smart_home/styles/themes.dart';

void main() {
  runApp(
      const ProviderScope(child: SmartHomeApp())
  );
}

class SmartHomeApp extends ConsumerWidget {
  const SmartHomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'Smart Home',
      theme: SmartHomeTheme.light,
      darkTheme: SmartHomeTheme.dark,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      routeInformationProvider: AppRoutes.router.routeInformationProvider,
      routeInformationParser: AppRoutes.router.routeInformationParser,
      routerDelegate: AppRoutes.router.routerDelegate,
    );
  }
}