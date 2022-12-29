import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../auth/data/auth_repository.dart';
import '../widgets/profile_widgets.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final controller = ref.read(authRepositoryProvider);
    return Scaffold(
      body: ProfileWidget(
        logout: controller.signOut,
        email: controller.getCurentUser?.email,
        fullName: controller.getCurentUser?.displayName,
        imageUrl: controller.getCurentUser?.photoURL,
      ),
    );
  }
}
