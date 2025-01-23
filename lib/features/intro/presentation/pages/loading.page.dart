import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rive_animated_icon/rive_animated_icon.dart';
import '../../../../helpers/utils.dart';

class LoadingPage extends ConsumerStatefulWidget {
  static const String route = '/loading';
  const LoadingPage({super.key});

  @override
  ConsumerState<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends ConsumerState<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: RiveAnimatedIcon(
          riveIcon: RiveIcon.star,
          width: 150,
          height: 150,
          color: Colors.blue,
          strokeWidth: 2,
          loopAnimation: true,
          onTap: () {},
        ),
      ),
    );
  }
}