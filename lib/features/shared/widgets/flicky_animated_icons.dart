import 'package:flutter/material.dart';
import 'package:smart_home/helpers/enums.dart';
import 'package:smart_home/styles/flicky_icons_icons.dart';

class FlickyAnimatedIcons extends StatelessWidget {
  final FlickyAnimatedIconOptions icon;
  final FlickyAnimatedIconSizes size;
  final bool isSelected;
  final Color? color;
  final VoidCallback? onTap;

  const FlickyAnimatedIcons({
    required this.icon,
    this.size = FlickyAnimatedIconSizes.small,
    this.isSelected = false,
    this.color,
    this.onTap,
    super.key,
  });

  IconData getIconData() {
    switch (icon) {
      case FlickyAnimatedIconOptions.ac:
        return FlickyIcons.ac;
      case FlickyAnimatedIconOptions.bolt:
        return FlickyIcons.bolt;
      case FlickyAnimatedIconOptions.fan:
        return FlickyIcons.fan;
      case FlickyAnimatedIconOptions.hairdryer:
        return FlickyIcons.hairdrier;
      case FlickyAnimatedIconOptions.oven:
        return FlickyIcons.oven;
      case FlickyAnimatedIconOptions.lightbulb:
        return FlickyIcons.lamp;
      case FlickyAnimatedIconOptions.flickybulb:
        return FlickyIcons.flickylight;
      case FlickyAnimatedIconOptions.flickytext:
        return FlickyIcons.flicky;
      case FlickyAnimatedIconOptions.barhome:
      case FlickyAnimatedIconOptions.barrooms:
      case FlickyAnimatedIconOptions.bardevices:
      case FlickyAnimatedIconOptions.barsettings:
        return FlickyIcons.union;
      default:
        return Icons.help_outline;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        width: size.value,
        height: size.value,
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue.withOpacity(0.2) : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(
          getIconData(),
          size: size.value * 0.8,
          color: color ?? (isSelected ? Colors.blue : Colors.black),
        ),
      ),
    );
  }
}
