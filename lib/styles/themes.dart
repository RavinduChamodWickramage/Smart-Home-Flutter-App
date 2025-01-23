import 'package:flutter/material.dart';
import 'package:smart_home/styles/colors.dart';
import 'package:smart_home/styles/styles.dart';

class SmartHomeTheme {

  static ThemeData dark = ThemeData(
      canvasColor: Colors.transparent,
      fontFamily: 'Product Sans',
      scaffoldBackgroundColor: SmartHomeColors.darkScaffoldBackground,
      colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.dark,
        seedColor: SmartHomeColors.darkSeedColor,
        primary: SmartHomeColors.darkPrimary,
        secondary: SmartHomeColors.darkSecondary,
        tertiary: SmartHomeColors.darkTertiary,
        background: SmartHomeColors.darkBackground,
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: SmartHomeColors.darkPrimary
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            elevation: 0,
            shadowColor: Colors.transparent,
            foregroundColor: Colors.black,
            textStyle: SmartHomeStyles.elevatedButtonTextStyle.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: SmartHomeStyles.smallSize,
              fontFamily: 'Product Sans',
            )
        ),
      ),
      textTheme: TextTheme(
          headlineLarge: SmartHomeStyles.headlineLarge,
          headlineMedium: SmartHomeStyles.headlineMedium,
          labelLarge: SmartHomeStyles.labelLarge,
          labelMedium: SmartHomeStyles.labelMedium,
          displayMedium: SmartHomeStyles.labelMedium.copyWith(
            color: Colors.white,
          )
      ),
      drawerTheme: const DrawerThemeData(
        backgroundColor: SmartHomeColors.darkSeedColor,
        surfaceTintColor: Colors.black,
      ),
      iconTheme: const IconThemeData(
          size: SmartHomeStyles.mediumIconSize,
          color: SmartHomeColors.darkSecondary
      ),
      snackBarTheme: SnackBarThemeData(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(
          topLeft: Radius.circular(SmartHomeStyles.mediumRadius),
          topRight: Radius.circular(SmartHomeStyles.mediumRadius),
        )),
        backgroundColor: SmartHomeColors.darkPrimary,
        actionTextColor: Colors.black,
        closeIconColor: Colors.black,
        insetPadding: SmartHomeStyles.smallPadding,
        contentTextStyle: SmartHomeStyles.labelMedium.copyWith(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      )
  );

  static ThemeData light = ThemeData(
      canvasColor: Colors.transparent,
      fontFamily: 'Product Sans',
      scaffoldBackgroundColor: SmartHomeColors.lightScaffoldBackground,
      colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.light,
        seedColor: SmartHomeColors.lightSeedColor,
        primary: SmartHomeColors.lightPrimary,
        secondary: SmartHomeColors.lightSecondary,
        tertiary: SmartHomeColors.lightTertiary,
        background: SmartHomeColors.lightBackground,
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: SmartHomeColors.lightPrimary
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            elevation: 0,
            foregroundColor: Colors.white,
            padding: SmartHomeStyles.mediumPadding,
            shadowColor: Colors.transparent,
            textStyle: SmartHomeStyles.elevatedButtonTextStyle.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: SmartHomeStyles.smallSize,
              fontFamily: 'Product Sans',
            )
        ),
      ),
      textTheme: TextTheme(
          headlineLarge: SmartHomeStyles.headlineLarge,
          headlineMedium: SmartHomeStyles.headlineMedium,
          labelLarge: SmartHomeStyles.labelLarge,
          labelMedium: SmartHomeStyles.labelMedium,
          displayMedium: SmartHomeStyles.labelMedium.copyWith(
            color: Colors.black,
          )
      ),
      drawerTheme: const DrawerThemeData(
        backgroundColor: SmartHomeColors.lightSeedColor,
        surfaceTintColor: Colors.white,
      ),
      iconTheme: const IconThemeData(
          size: SmartHomeStyles.mediumIconSize,
          color: SmartHomeColors.darkSecondary
      ),
      snackBarTheme: SnackBarThemeData(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(
          topLeft: Radius.circular(SmartHomeStyles.mediumRadius),
          topRight: Radius.circular(SmartHomeStyles.mediumRadius),
        )),
        backgroundColor: SmartHomeColors.lightPrimary,
        actionTextColor: Colors.white,
        closeIconColor: Colors.white,
        insetPadding: SmartHomeStyles.smallPadding,
        contentTextStyle: SmartHomeStyles.labelMedium
            .copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.white),
      )
  );
}