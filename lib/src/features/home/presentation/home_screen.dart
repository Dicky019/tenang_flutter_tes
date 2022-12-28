import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../auth/data/auth_repository.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final controller = ref.read(authRepositoryProvider);
    return Scaffold(
        body: Column(
      children: [
        Text(controller.getCurentUser?.displayName ?? ""),
        Center(
          child: ElevatedButton(
            onPressed: controller.signOut,
            child: Text("d"),
          ),
        ),
      ],
    ));
  }
}
