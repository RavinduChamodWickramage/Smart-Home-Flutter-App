import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:smart_home/styles/styles.dart';

class WarningMessage extends StatelessWidget {

  final String message;
  const WarningMessage({
    required this.message,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.warning_amber_outlined,
              size: SmartHomeStyles.largeIconSize,
              color: Theme.of(context).colorScheme.secondary
          ),
          SmartHomeStyles.xsmallVGap,
          Text(message, textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: Theme.of(context).colorScheme.secondary
              )
          )
        ].animate(
          interval: 200.ms,
        ).slideY(
          begin: 0.5, end: 0,
          duration: 0.5.seconds,
          curve: Curves.easeInOut,
        ).fadeIn(
          duration: 0.5.seconds,
          curve: Curves.easeInOut,
        ),
      ),
    );
  }
}