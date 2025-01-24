import 'package:flutter/material.dart';
import 'package:smart_home/features/devices/presentation/widgets/add_device_workflow/device_details_panel.dart';
import 'package:smart_home/features/navigation/presentation/widgets/main_appbar.dart';
import 'package:smart_home/styles/styles.dart';

class DeviceDetailsPage extends StatelessWidget {

  static const String route = '/device_details';
  const DeviceDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
        appBar: SmartHomeAppBar(),
        body: Padding(
          padding: SmartHomeStyles.largePadding,
          child: SafeArea(
            child: DeviceDetailsPanel(),
          ),
        )
    );
  }
}