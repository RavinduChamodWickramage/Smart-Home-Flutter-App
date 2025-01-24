import 'package:flutter/material.dart';
import 'package:smart_home/features/landing/data/model/home_tile_option.dart';
import 'package:smart_home/styles/styles.dart';

class HomePageTile extends StatelessWidget {


  final HomeTileOption tileOption;
  final Function onTap;

  const HomePageTile({
    required this.tileOption,
    required this.onTap,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: SmartHomeStyles.smallSize),
      child: Material(
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(SmartHomeStyles.smallRadius),
        color: Theme.of(context).colorScheme.secondary.withOpacity(0.15),
        child: InkWell(
          onTap: () {
            onTap(tileOption);
          },
          child: Container(
              width: 150,
              padding: SmartHomeStyles.mediumPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                      tileOption.icon,
                      size: SmartHomeStyles.mediumIconSize,
                      color: Theme.of(context).colorScheme.primary),
                  SmartHomeStyles.smallVGap,
                  Text(tileOption.label,
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary
                      )
                  )
                ],
              )
          ),
        ),
      ),
    );
  }
}