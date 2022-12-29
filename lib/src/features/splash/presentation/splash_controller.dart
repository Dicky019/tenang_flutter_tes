import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../routing/app_route.dart';
import '../../../services/local/hive_service.dart';

class SplashControllerNotifier {
  SplashControllerNotifier({required this.isOnboardingDone});

  final bool isOnboardingDone;

  init(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        if (isOnboardingDone) {
          context.pushReplacement(RouteApp.dasboard.path);
        } else {
          context.pushReplacement(RouteApp.onboarding.path);
        }
      },
    );
    return null;
  }
}

final splashControllerProvider =
    Provider.autoDispose<SplashControllerNotifier>((ref) {
  return SplashControllerNotifier(
    isOnboardingDone: ref.read(hiveServiceProvider).getIsOnboardingDone,
  );
});
