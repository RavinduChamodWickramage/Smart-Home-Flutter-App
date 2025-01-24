import 'package:flutter/material.dart';
import 'package:smart_home/features/landing/presentation/responsiveness/landing_page_responsive.config.dart';
import 'package:smart_home/features/landing/presentation/widgets/energy_consumption_panel.dart';
import 'package:smart_home/features/landing/presentation/widgets/home_page_header.dart';
import 'package:smart_home/features/landing/presentation/widgets/home_title_options_panel.dart';
import 'package:smart_home/styles/styles.dart';

class HomePage extends StatelessWidget {
  static const String route = '/home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    final config = LandingPageResponsiveConfig.landingPageConfig(context);

    return Flex(
      direction: Axis.vertical,
      children: [
        Expanded(
          flex: config.homeTopPartFlex,
          child: Flex(
            direction: config.homeTopDirection,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  flex: config.homeHeaderFlex,
                  child: const HomePageHeader()
              ),
              SmartHomeStyles.smallVGap,
              const Expanded(
                  child: HomeTileOptionsPanel()
              ),
            ],
          ),
        ),
        const EnergyConsumptionPanel()
      ],
    );
  }
}