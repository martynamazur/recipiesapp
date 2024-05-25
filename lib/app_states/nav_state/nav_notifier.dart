
import 'package:fetchingapi/app_states/nav_state/nav_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavNotifier extends StateNotifier<NavStates> {

  NavNotifier(): super(const NavStates());

  void onIndexChange(int index){
    state = state.copyWith(index: index);
  }

}