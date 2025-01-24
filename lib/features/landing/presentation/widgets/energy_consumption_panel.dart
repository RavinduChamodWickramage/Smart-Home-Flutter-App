import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smart_home/features/landing/presentation/providers/landing_providers.dart';
import 'package:smart_home/features/landing/presentation/widgets/energy_consumption_column.dart';
import 'package:smart_home/styles/styles.dart';

class EnergyConsumptionPanel extends ConsumerWidget {
  const EnergyConsumptionPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final energyConsumption = ref.read(energyConsumptionProvider);

    return Expanded(
        child: Column(
          children: [
            SmartHomeStyles.smallVGap,
            Row(
              children: [
                SmartHomeStyles.smallHGap,
                Icon(Icons.energy_savings_leaf,
                  color: Theme.of(context).colorScheme.primary,
                ),
                SmartHomeStyles.xsmallHGap,
                Text('My Energy Consumption (kW)',
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
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
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(
                  left: SmartHomeStyles.mediumSize,
                  bottom: SmartHomeStyles.smallSize,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: energyConsumption.values!.length,
                itemBuilder:(context, index) {
                  return ConsumptionColumn(
                      consumption: energyConsumption.values![index]
                  );
                },),
            )
          ],
        )
    );
  }
}