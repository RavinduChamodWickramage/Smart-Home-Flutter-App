import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smart_home/features/landing/presentation/responsiveness/landing_page_responsive.config.dart';
import 'package:smart_home/features/navigation/providers/navigation_providers.dart';
import 'package:smart_home/features/shared/widgets/flicky_animated_icons.dart';
import 'package:smart_home/styles/styles.dart';

class SmartHomeBottomBar extends ConsumerWidget {
  const SmartHomeBottomBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final config = LandingPageResponsiveConfig.landingPageConfig(context);
    final barItems = ref.watch(bottomBarVMProvider);

    return Container(
      padding: SmartHomeStyles.xsmallPadding,
      color: config.bottomBarBg,
      child: Flex(
        direction: config.bottomBarDirection,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: barItems.map((e) {
          return Container(
            margin: const EdgeInsets.only(bottom: SmartHomeStyles.smallSize),
            child: IconButton(
                onPressed: () {
                  ref.read(bottomBarVMProvider.notifier).selectedItem(e);
                },
                icon: FlickyAnimatedIcons(
                  icon: e.iconOption,
                  isSelected: e.isSelected,
                )
            ),
          );
        }).toList()
            .animate(
            interval: 200.ms
        ).slideY(
            begin: 1, end: 0,
            duration: 0.5.seconds,
            curve: Curves.easeInOut
        ),
      ),
    );
  }
}