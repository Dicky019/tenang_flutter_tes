import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/home_widgets.dart';
import 'home_controller.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final controller = ref.read(homeControllerProvider.notifier);
    final state = ref.watch(homeControllerProvider);
    return Scaffold(
      body: HomeWidget(
        listDoctor: state.listDoctor,
        onTap: controller.gotoSearch,
        onTapAppointment: () => controller.gotoAppontMent(ref),
        onTapDoctor: controller.gotoSearch,
      ),
    );
  }
}
