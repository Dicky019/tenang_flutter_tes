import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tenang_flutter_tes/src/features/auth/application/auth_service.dart';
import 'package:tenang_flutter_tes/src/routing/app_route.dart';

import '../widgets/profile_widgets.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final controller = ref.read(authServiceProvider);
    return Scaffold(
      body: ProfileWidget(
        logout: () {
          controller.signOut().then(
                (value) => context.pushReplacement(RouteApp.signIn.path),
              );
        },
        email: controller.getCurentUser?.email,
        fullName: controller.getCurentUser?.displayName,
        imageUrl: controller.getCurentUser?.photoURL,
      ),
    );
  }
}
