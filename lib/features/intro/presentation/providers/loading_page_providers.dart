import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smart_home/features/intro/presentation/viewmodels/loading_notification.viewmodel.dart';
import 'package:smart_home/helpers/enums.dart';

final loadingMessageProvider = StateProvider<String>((ref) => '');

final loadingNotificationVMProvider = StateNotifierProvider<LoadingNotificationViewModel, AppLoadingStates>((ref) {
  return LoadingNotificationViewModel(AppLoadingStates.none, ref);
});