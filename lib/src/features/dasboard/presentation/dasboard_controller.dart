import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../appointment/presentation/appointment_screen.dart';
import '../../home/presentation/home_screen.dart';
import '../../inbox/presentation/inbox_screen.dart';
import '../../profile/presentation/profile_screen.dart';
import 'dasboard_state.dart';

class DasboardControllerNotifier extends StateNotifier<DasboardState> {
  DasboardControllerNotifier() : super(const DasboardState());

  final listWidget = [
    const HomeScreen(),
    const AppointmentScreen(),
    const InboxScreen(),
    const ProfileScreen(),
  ];

  Widget widget(int index) => listWidget[index];

  void changeWidget(int index) {
    state = state.copyWith(
      index: index,
    );
  }
}

final dasboardControllerProvider =
    StateNotifierProvider<DasboardControllerNotifier, DasboardState>(
  (ref) {
    return DasboardControllerNotifier();
  },
);
