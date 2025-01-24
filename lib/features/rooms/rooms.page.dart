import 'package:flutter/material.dart';
import 'package:smart_home/features/shared/widgets/flicky_animated_icons.dart';
import 'package:smart_home/features/shared/widgets/main_page_header.dart';
import 'package:smart_home/features/shared/widgets/warning_message.dart';
import 'package:smart_home/helpers/enums.dart';

class RoomsPage extends StatelessWidget {

  static const String route = '/rooms';

  const RoomsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainPageHeader(
          icon: FlickyAnimatedIcons(
            icon: FlickyAnimatedIconOptions.barrooms,
            size: FlickyAnimatedIconSizes.large,
            isSelected: true,
          ),
          title: 'My Rooms',
        ),
        Expanded(
          child: WarningMessage(message: 'No available rooms'),
        )
      ],
    );
  }
}