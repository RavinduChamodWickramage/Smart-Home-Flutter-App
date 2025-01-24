import 'package:flutter/material.dart';
import 'package:smart_home/features/shared/widgets/flicky_animated_icons.dart';
import 'package:smart_home/helpers/enums.dart';
import 'package:smart_home/styles/styles.dart';

class SmartHomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  const SmartHomeAppBar({super.key});

  @override
  State<SmartHomeAppBar> createState() => _SmartHomeAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(SmartHomeStyles.appBarSize);
}

class _SmartHomeAppBarState extends State<SmartHomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.secondary
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: const FlickyAnimatedIcons(
        icon: FlickyAnimatedIconOptions.flickybulb,
        isSelected: true,
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(
            Icons.notifications_outlined,
          ),
          onPressed: () {

          },
        ),
        SmartHomeStyles.xsmallHGap
      ],
    );
  }
}