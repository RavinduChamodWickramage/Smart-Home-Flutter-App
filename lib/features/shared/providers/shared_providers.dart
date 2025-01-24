import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_home/features/devices/data/models/device.model.dart';
import 'package:smart_home/features/shared/models/device_response.model.dart';
import 'package:smart_home/features/shared/services/device.service.dart';
import 'package:smart_home/features/shared/services/localstorage.service.dart';
import 'package:smart_home/helpers/utils.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations_en.dart';

final sharedPrefsInstanceProvider = Provider((ref) {
  return SharedPreferences.getInstance();
});

final sharedPrefsLoaderProvider = FutureProvider<SharedPreferences>((ref) async {
  final prefs = await ref.read(sharedPrefsInstanceProvider);
  return prefs;
});

final localStorageProvider = Provider((ref) {
  return LocalStorageService(ref);
});

final deviceServiceProvider = Provider((ref) {
  return DeviceService(ref);
});

final deviceServiceFutureProvider = FutureProvider.family<DeviceResponse, DeviceModel>((ref, DeviceModel device) async {
  if (device.outlet >= 0) {
    final response = await ref.read(deviceServiceProvider).toggleDevice(device);
    return response;
  }

  return DeviceResponse(statusCode: 200, success: true);
});

final appLocalizationsProvider = Provider<AppLocalizations>((ref) {
  AppLocalizations appLocalizations;

  try {
    appLocalizations = lookupAppLocalizations(View.of(Utils.mainNav.currentContext!).platformDispatcher.locale);
  }
  on FlutterError {
    appLocalizations = AppLocalizationsEn();
  }

  return appLocalizations;
});