import 'package:flutter/material.dart';
import 'package:smart_home/features/shared/widgets/flicky_animated_icons.dart';
import 'package:smart_home/features/shared/widgets/main_page_header.dart';
import 'package:smart_home/helpers/enums.dart';

class SettingsPage extends StatelessWidget {

  static const String route = '/settings';

  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainPageHeader(
          icon: FlickyAnimatedIcons(
            icon: FlickyAnimatedIconOptions.barsettings,
            size: FlickyAnimatedIconSizes.large,
            isSelected: true,
          ),
          title: 'My Settings',
        ),
        Expanded(
            child: Container()
        )
      ],
    );
  }
}