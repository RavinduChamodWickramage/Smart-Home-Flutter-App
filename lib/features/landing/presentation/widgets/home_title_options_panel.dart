import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smart_home/features/landing/presentation/providers/landing_providers.dart';
import 'package:smart_home/features/landing/presentation/widgets/home_page_title.dart';
import 'package:smart_home/features/shared/providers/shared_providers.dart';
import 'package:smart_home/styles/styles.dart';

class HomeTileOptionsPanel extends ConsumerWidget {
  const HomeTileOptionsPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final homeTiles = ref.watch(homeTileOptionsVMProvider);
    final loc = ref.read(appLocalizationsProvider);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SmartHomeStyles.mediumHGap,
            Icon(Icons.check_circle_outline, color: Theme.of(context).colorScheme.primary),
            SmartHomeStyles.xxsmallHGap,
            Text(loc.quickActionsLabel,
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                )
            )
          ],
        ).animate(
          delay: 200.ms,
        )
            .slideX(
            begin: 0.25, end: 0,
            duration: 0.5.seconds,
            curve: Curves.easeInOut
        ).fadeIn(
            duration: 0.5.seconds,
            curve: Curves.easeInOut
        ),
        SmartHomeStyles.xsmallVGap,
        SizedBox(
          height: 150,
          child: ListView(
            padding: const EdgeInsets.only(left: SmartHomeStyles.mediumSize),
            scrollDirection: Axis.horizontal,
            children: [
              for(final tile in homeTiles)
                HomePageTile(
                    tileOption: tile,
                    onTap: (selectedTile) {
                      ref.read(homeTileOptionsVMProvider.notifier).onTileSelected(selectedTile);
                    }
                )
            ].animate(
                interval: 200.ms
            ).scaleXY(
                begin: 0.5, end: 1,
                duration: 0.5.seconds,
                curve: Curves.easeInOut
            ).fadeIn(
                duration: 0.5.seconds,
                curve: Curves.easeInOut
            ),
          ),
        ),
      ],
    );
  }
}