import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smart_home/features/devices/data/models/device.model.dart';
import 'package:smart_home/features/devices/data/repositories/devices.repository.dart';
import 'package:smart_home/features/devices/presentation/viewmodels/device_toggle.viewmodel.dart';
import 'package:smart_home/features/devices/presentation/viewmodels/devicelist.viewmodel.dart';

final deviceRepositoryProvider = Provider((ref) {
  return DevicesRepository(ref);
});

final deviceListVMProvider = StateNotifierProvider<DeviceListViewModel, List<DeviceModel>>((ref) {
  return DeviceListViewModel([], ref);
});

final selectedDeviceProvider = StateProvider<DeviceModel?>((ref) {
  return null;
});

final deviceToggleVMProvider = StateNotifierProvider<DeviceToggleViewModel, bool>((ref) {
  return DeviceToggleViewModel(false, ref);
});