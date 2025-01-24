import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:smart_home/features/shared/widgets/flicky_loading.dart';
import 'package:smart_home/styles/styles.dart';

class SavingDeviceView extends StatelessWidget {
  const SavingDeviceView({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.5,
      child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const FlickyLoading(),
              SmartHomeStyles.smallVGap,
              Text('Saving Device',
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold
                  )
              )
            ].animate(
              interval: 200.ms,
            ).slideY(
                begin: 0.5, end: 0,
                duration: 0.5.seconds,
                curve: Curves.easeInOut
            ).fadeIn(
                duration: 0.5.seconds,
                curve: Curves.easeInOut
            ),
          )
      ),
    );
  }
}