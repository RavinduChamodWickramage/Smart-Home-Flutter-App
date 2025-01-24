import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smart_home/features/devices/presentation/responsiveness/device_details_responsive.config.dart';
import 'package:smart_home/features/devices/presentation/widgets/add_device_workflow/device_details_panel.dart';
import 'package:smart_home/features/devices/presentation/widgets/add_device_workflow/devices_list.dart';
import 'package:smart_home/features/shared/widgets/flicky_animated_icons.dart';
import 'package:smart_home/features/shared/widgets/main_page_header.dart';
import 'package:smart_home/helpers/enums.dart';
import 'package:smart_home/styles/styles.dart';

class DevicesPage extends ConsumerWidget {

  static const String route = '/devices';

  const DevicesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final config = DeviceDetailsResponsiveConfig.deviceDetailsConfig(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainPageHeader(
          icon: FlickyAnimatedIcons(
            icon: FlickyAnimatedIconOptions.bardevices,
            size: FlickyAnimatedIconSizes.large,
            isSelected: true,
          ),
          title: 'My Devices',
        ),
        Visibility(
          visible: config.showSingleLayout,
          replacement: Builder(
              builder: (context) {
                return const Expanded(
                  child: Padding(
                    padding: SmartHomeStyles.mediumPadding,
                    child: Row(
                      children: [
                        Expanded(child: DevicesList()),
                        Expanded(child: DeviceDetailsPanel())
                      ],
                    ),
                  ),
                );
              }
          ),
          child: const Expanded(
              child: DevicesList()
          ),
        ),
      ],
    );
  }
}