import 'package:flutter/material.dart';
import 'package:smart_home/features/landing/presentation/responsiveness/landing_page_responsive.config.dart';
import 'package:smart_home/features/navigation/presentation/widgets/home_automation_bottombar.dart';
import 'package:smart_home/features/navigation/presentation/widgets/main_appbar.dart';
import 'package:smart_home/features/navigation/presentation/widgets/side_drawer.dart';

class LandingPage extends StatelessWidget {
  static const String route = '/landing';

  final Widget child;
  const LandingPage({
    required this.child,
    super.key});

  @override
  Widget build(BuildContext context) {

    final config = LandingPageResponsiveConfig.landingPageConfig(context);

    return Scaffold(
        drawer: const Drawer(
          child: SideDrawer(),
        ),
        appBar: const SmartHomeAppBar(),
        body: Center(
          child: Flex(
            verticalDirection: config.contentVerticalDirection,
            direction: config.contentDirection,
            children: [
              Expanded(child: SafeArea(child: child)),
              const SmartHomeBottomBar(),
            ].reverse(config.reverseContent),
          ),
        )
    );
  }
}

extension ReversedList on List<Widget> {

  List<Widget> reverse(bool reverse) {
    return reverse ? reversed.toList() : this;
  }
}