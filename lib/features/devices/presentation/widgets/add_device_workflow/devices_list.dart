import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smart_home/features/devices/presentation/providers/device_providers.dart';
import 'package:smart_home/features/devices/presentation/widgets/add_device_workflow/device_row_item.dart';
import 'package:smart_home/features/shared/widgets/warning_message.dart';
import 'package:smart_home/styles/styles.dart';

class DevicesList extends ConsumerWidget {
  const DevicesList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final devicesList = ref.watch(deviceListVMProvider);

    return devicesList.isNotEmpty ? ListView.builder(
      itemCount: devicesList.length,
      padding: SmartHomeStyles.mediumPadding,
      itemBuilder: (context, index) {
        return DeviceRowItem(
            device: devicesList[index],
            onTapDevice: (device) {
              ref.read(deviceListVMProvider.notifier).showDeviceDetails(device);
            }
        ).animate(
          delay: (index * 0.125).seconds,
        ).slideY(
            begin: 0.5, end: 0,
            duration: 0.5.seconds,
            curve: Curves.easeInOut
        ).fadeIn(
            duration: 0.5.seconds,
            curve: Curves.easeInOut
        );
      },
    ) : const WarningMessage(message: "No available devices");
  }
}