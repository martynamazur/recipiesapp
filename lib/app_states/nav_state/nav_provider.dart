

import 'package:fetchingapi/app_states/nav_state/nav_notifier.dart';
import 'package:fetchingapi/app_states/nav_state/nav_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final navProvider = StateNotifierProvider<NavNotifier, NavStates>((ref) => NavNotifier());

/*
final indexBottomNavbarProvider = StateProvider<int>((ref) {
  return 0;
});

 */
