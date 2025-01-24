import 'package:flutter/material.dart';
import 'package:smart_home/features/devices/data/models/device.model.dart';
import 'package:smart_home/features/shared/widgets/flicky_animated_icons.dart';
import 'package:smart_home/styles/styles.dart';

class DeviceRowItem extends StatelessWidget {

  final DeviceModel device;
  final Function onTapDevice;

  const DeviceRowItem({
    required this.device,
    required this.onTapDevice,
    super.key
  });

  @override
  Widget build(BuildContext context) {

    final selectedColor = device.isSelected ? Theme.of(context).colorScheme.primary :
    Theme.of(context).colorScheme.secondary;

    final bgColor = selectedColor.withOpacity(0.15);
    final splashColor = selectedColor.withOpacity(0.25);

    return Container(
      margin: const EdgeInsets.only(bottom: SmartHomeStyles.smallSize),
      child: Material(
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(SmartHomeStyles.smallRadius),
        color: bgColor,
        child: InkWell(
          onTap: () {
            onTapDevice(device);
          },
          splashColor: splashColor,
          highlightColor: splashColor,
          child: Padding(
            padding: SmartHomeStyles.mediumPadding,
            child: Row(
              children: [
                FlickyAnimatedIcons(
                  icon: device.iconOption,
                  isSelected: device.isSelected,
                ),
                SmartHomeStyles.smallHGap,
                Expanded(
                  child: Text(device.label,
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: selectedColor
                      )
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}