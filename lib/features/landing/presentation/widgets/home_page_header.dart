import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smart_home/features/landing/presentation/responsiveness/landing_page_responsive.config.dart';
import 'package:smart_home/features/shared/providers/shared_providers.dart';
import 'package:smart_home/features/shared/widgets/flicky_animated_icons.dart';
import 'package:smart_home/helpers/enums.dart';
import 'package:smart_home/styles/styles.dart';

class HomePageHeader extends ConsumerWidget {
  const HomePageHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final config = LandingPageResponsiveConfig.landingPageConfig(context);
    final loc = ref.read(appLocalizationsProvider);

    return Padding(
      padding: SmartHomeStyles.mediumPadding.copyWith(
        bottom: 0,
        left: SmartHomeStyles.mediumSize,
      ),
      child: Row(
        children: [
          Visibility(
            visible: config.showBoltOnHeader,
            child: const FlickyAnimatedIcons(
              icon: FlickyAnimatedIconOptions.bolt,
              isSelected: true,
              size: FlickyAnimatedIconSizes.large,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${loc.welcomeLabel},',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: Theme.of(context).colorScheme.secondary
                  )
              ),
              Text('Roman',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold
                  )
              ),
            ].animate(
                interval: 300.ms
            ).slideX(
              begin: 0.5, end: 0,
              duration: 0.5.seconds,
              curve: Curves.easeInOut,
            ).fadeIn(
              duration: 0.5.seconds,
              curve: Curves.easeInOut,
            ),
          ),
        ],
      ),
    );
  }
}