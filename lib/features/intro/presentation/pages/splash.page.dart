import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rive_animated_icon/rive_animated_icon.dart';
import '../../../../helpers/utils.dart';
import 'loading.page.dart';

class SplashPage extends StatefulWidget {
  static const String route = '/splash';
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late Timer durationTimer;

  @override
  void initState() {
    super.initState();
    durationTimer = Timer(const Duration(seconds: 4), () {
      GoRouter.of(Utils.mainNav.currentContext!).go(LoadingPage.route);
    });
  }

  @override
  void dispose() {
    durationTimer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: RiveAnimatedIcon(
          riveIcon: RiveIcon.diamond,
          width: 200,
          height: 200,
          color: Colors.lightBlueAccent,
          strokeWidth: 2,
          loopAnimation: true,
        ),
      ),
    );
  }
}
