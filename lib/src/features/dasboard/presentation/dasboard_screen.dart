import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tenang_flutter_tes/src/constants/constants.dart';
import 'package:tenang_flutter_tes/src/features/dasboard/presentation/dasboard_controller.dart';

class DasboardScreen extends ConsumerWidget {
  const DasboardScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    final state = ref.watch(dasboardControllerProvider);
    final controller = ref.read(dasboardControllerProvider.notifier);

    return Scaffold(
      body: controller.widget(state.index),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorApp.primaryColor,
        selectedItemColor: ColorApp.white,
        unselectedItemColor: ColorApp.white.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: state.index,
        onTap: controller.changeWidget,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(CupertinoIcons.home),
            activeIcon: Icon(
              CupertinoIcons.home,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Appointment',
            icon: Icon(CupertinoIcons.calendar_today),
            activeIcon: Icon(
              CupertinoIcons.calendar_today,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Inbox',
            icon: Icon(CupertinoIcons.mail),
            activeIcon: Icon(
              CupertinoIcons.mail,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(CupertinoIcons.person),
            activeIcon: Icon(
              CupertinoIcons.person,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
